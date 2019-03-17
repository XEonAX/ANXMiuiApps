.class public Lcom/miui/gallery/provider/CloudUtils;
.super Ljava/lang/Object;
.source "CloudUtils.java"


# direct methods
.method private static varargs addToAlbum(Landroid/content/Context;IIJZ[J)[J
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "dupType"    # I
    .param p3, "albumId"    # J
    .param p5, "operateSync"    # Z
    .param p6, "mediaIds"    # [J

    .prologue
    .line 77
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 78
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "extra_type"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 79
    const-string v2, "extra_src_type"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 80
    const-string v2, "extra_src_media_ids"

    invoke-virtual {v0, v2, p6}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 81
    const-string v2, "extra_dup_type"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 82
    const-string/jumbo v2, "should_operate_sync"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v4, "add_to_album"

    .line 85
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 84
    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 86
    .local v1, "result":Landroid/os/Bundle;
    const-string v2, "ids"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v2

    return-object v2
.end method

.method private static addToAlbum(Landroid/content/Context;IJLjava/util/ArrayList;)[J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "albumId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IJ",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 90
    .local p4, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 91
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "extra_type"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 92
    const-string v2, "extra_src_type"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    const-string v2, "extra_src_uris"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v4, "add_to_album"

    .line 95
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 94
    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 96
    .local v1, "result":Landroid/os/Bundle;
    const-string v2, "ids"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v2

    return-object v2
.end method

.method public static varargs addToFavoritesById(Landroid/content/Context;[J)[J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ids"    # [J

    .prologue
    const/4 v3, 0x1

    .line 293
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 294
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "operation_type"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 295
    const-string v2, "add_remove_by"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 296
    const-string v2, "extra_src_media_ids"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 297
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v4, "add_remove_favorite"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 300
    .local v1, "result":Landroid/os/Bundle;
    const-string v2, "ids"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v2

    return-object v2
.end method

.method public static varargs addToFavoritesByPath(Landroid/content/Context;[Ljava/lang/String;)[J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "paths"    # [Ljava/lang/String;

    .prologue
    .line 271
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 272
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "operation_type"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 273
    const-string v2, "add_remove_by"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 274
    const-string v2, "extra_src_paths"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v4, "add_remove_favorite"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 278
    .local v1, "result":Landroid/os/Bundle;
    const-string v2, "ids"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v2

    return-object v2
.end method

.method public static varargs addToFavoritesBySha1(Landroid/content/Context;[Ljava/lang/String;)[J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sha1"    # [Ljava/lang/String;

    .prologue
    .line 249
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 250
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "operation_type"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 251
    const-string v2, "add_remove_by"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 252
    const-string v2, "extra_src_sha1"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v4, "add_remove_favorite"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 256
    .local v1, "result":Landroid/os/Bundle;
    const-string v2, "ids"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v2

    return-object v2
.end method

.method public static addToSecret(Landroid/content/Context;Ljava/util/ArrayList;)[J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 336
    .local p1, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 337
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "operation_type"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 338
    const-string v2, "extra_src_uris"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 339
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v4, "add_remove_secret"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 340
    .local v1, "result":Landroid/os/Bundle;
    const-string v2, "ids"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v2

    return-object v2
.end method

.method public static varargs addToSecret(Landroid/content/Context;[J)[J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaIds"    # [J

    .prologue
    .line 328
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 329
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "operation_type"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 330
    const-string v2, "extra_src_media_ids"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 331
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v4, "add_remove_secret"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 332
    .local v1, "result":Landroid/os/Bundle;
    const-string v2, "ids"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v2

    return-object v2
.end method

.method private static callMethodAsync(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 367
    new-instance v0, Lcom/miui/gallery/provider/CloudUtils$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/miui/gallery/provider/CloudUtils$2;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 377
    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/provider/CloudUtils$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 378
    return-void
.end method

.method public static varargs copy(Landroid/content/Context;IJ[J)[J
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dupType"    # I
    .param p2, "albumId"    # J
    .param p4, "mediaIds"    # [J

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-static {p1}, Lcom/miui/gallery/provider/CloudUtils;->getDupType(I)I

    move-result v3

    move-object v1, p0

    move-wide v4, p2

    move v6, v2

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Lcom/miui/gallery/provider/CloudUtils;->addToAlbum(Landroid/content/Context;IIJZ[J)[J

    move-result-object v0

    return-object v0
.end method

.method public static copy(Landroid/content/Context;JLjava/util/ArrayList;)[J
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "albumId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 72
    .local p3, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/miui/gallery/provider/CloudUtils;->addToAlbum(Landroid/content/Context;IJLjava/util/ArrayList;)[J

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v2, "create_album"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static varargs deleteAlbum(Landroid/content/Context;II[J)[J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deleteOption"    # I
    .param p2, "deleteReason"    # I
    .param p3, "albumIds"    # [J

    .prologue
    .line 227
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 228
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "extra_album_ids"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 229
    const-string v2, "extra_delete_options"

    invoke-static {p1}, Lcom/miui/gallery/provider/CloudUtils;->getDeleteOptions(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 230
    const-string v2, "extra_delete_reason"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 231
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v4, "delete_album"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 233
    .local v1, "result":Landroid/os/Bundle;
    const-string v2, "ids"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v2

    return-object v2
.end method

.method public static varargs deleteById(Landroid/content/Context;III[J)[J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dupType"    # I
    .param p2, "deleteOption"    # I
    .param p3, "deleteReason"    # I
    .param p4, "ids"    # [J

    .prologue
    .line 133
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 134
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "delete_by"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 135
    const-string v2, "extra_ids"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 136
    const-string v2, "extra_dup_type"

    invoke-static {p1}, Lcom/miui/gallery/provider/CloudUtils;->getDupType(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 137
    const-string v2, "extra_delete_options"

    invoke-static {p2}, Lcom/miui/gallery/provider/CloudUtils;->getDeleteOptions(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 138
    const-string v2, "extra_delete_reason"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v4, "delete"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 141
    .local v1, "result":Landroid/os/Bundle;
    const-string v2, "ids"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v2

    return-object v2
.end method

.method public static varargs deleteById(Landroid/content/Context;I[J)[J
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deleteReason"    # I
    .param p2, "ids"    # [J

    .prologue
    const/4 v0, 0x0

    .line 108
    invoke-static {p0, v0, v0, p1, p2}, Lcom/miui/gallery/provider/CloudUtils;->deleteById(Landroid/content/Context;III[J)[J

    move-result-object v0

    return-object v0
.end method

.method public static varargs deleteByPath(Landroid/content/Context;II[Ljava/lang/String;)[J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deleteOption"    # I
    .param p2, "deleteReason"    # I
    .param p3, "paths"    # [Ljava/lang/String;

    .prologue
    .line 163
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 164
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "delete_by"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 165
    const-string v2, "extra_paths"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 166
    const-string v2, "extra_delete_options"

    invoke-static {p1}, Lcom/miui/gallery/provider/CloudUtils;->getDeleteOptions(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 167
    const-string v2, "extra_delete_reason"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v4, "delete"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 170
    .local v1, "result":Landroid/os/Bundle;
    const-string v2, "ids"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v2

    return-object v2
.end method

.method public static varargs deleteByPath(Landroid/content/Context;I[Ljava/lang/String;)[J
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deleteReason"    # I
    .param p2, "paths"    # [Ljava/lang/String;

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/miui/gallery/provider/CloudUtils;->deleteByPath(Landroid/content/Context;II[Ljava/lang/String;)[J

    move-result-object v0

    return-object v0
.end method

.method public static varargs deleteBySha1(Landroid/content/Context;ZI[Ljava/lang/String;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "keepDup"    # Z
    .param p2, "deleteReason"    # I
    .param p3, "sha1s"    # [Ljava/lang/String;

    .prologue
    .line 198
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 199
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "delete_by"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 200
    const-string v2, "extra_sha1s"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 201
    const-string v2, "extra_keep_dup"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 202
    const-string v2, "extra_delete_reason"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 203
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v4, "delete"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 205
    .local v1, "result":Landroid/os/Bundle;
    const-string v2, "count"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v2, v2

    return v2
.end method

.method public static varargs deleteCloudByPath(Landroid/content/Context;I[Ljava/lang/String;)[J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deleteReason"    # I
    .param p2, "paths"    # [Ljava/lang/String;

    .prologue
    .line 180
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 181
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "delete_by"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 182
    const-string v2, "extra_paths"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 183
    const-string v2, "extra_delete_reason"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v4, "delete"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 186
    .local v1, "result":Landroid/os/Bundle;
    const-string v2, "ids"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v2

    return-object v2
.end method

.method public static forceTop(Landroid/content/Context;Landroid/net/Uri;[J)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "ids"    # [J

    .prologue
    .line 237
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 238
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "album_id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 239
    const-string v1, "force_top"

    invoke-static {p0, p1, v1, v0}, Lcom/miui/gallery/provider/CloudUtils;->callMethodAsync(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 240
    return-void
.end method

.method private static getDeleteOptions(I)I
    .locals 1
    .param p0, "uiOptions"    # I

    .prologue
    const/4 v0, 0x0

    .line 47
    packed-switch p0, :pswitch_data_0

    .line 53
    :goto_0
    :pswitch_0
    return v0

    .line 51
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getDupType(I)I
    .locals 1
    .param p0, "uiScene"    # I

    .prologue
    .line 33
    packed-switch p0, :pswitch_data_0

    .line 41
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 35
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 37
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 39
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 33
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getSecretInfo(Landroid/content/Context;JLcom/miui/gallery/model/SecretInfo;)Lcom/miui/gallery/model/SecretInfo;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J
    .param p3, "secretInfo"    # Lcom/miui/gallery/model/SecretInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 344
    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    const-string v0, "localFile"

    aput-object v0, v2, v4

    const/4 v0, 0x2

    const-string v3, "secretKey"

    aput-object v3, v2, v0

    const-string v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    .line 345
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v5, 0x0

    new-instance v6, Lcom/miui/gallery/provider/CloudUtils$1;

    invoke-direct {v6, p3}, Lcom/miui/gallery/provider/CloudUtils$1;-><init>(Lcom/miui/gallery/model/SecretInfo;)V

    move-object v0, p0

    .line 344
    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/model/SecretInfo;

    return-object v0
.end method

.method public static varargs move(Landroid/content/Context;IJZ[J)[J
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dupType"    # I
    .param p2, "albumId"    # J
    .param p4, "operateSync"    # Z
    .param p5, "mediaIds"    # [J

    .prologue
    .line 58
    const/4 v2, 0x1

    invoke-static {p1}, Lcom/miui/gallery/provider/CloudUtils;->getDupType(I)I

    move-result v3

    move-object v1, p0

    move-wide v4, p2

    move v6, p4

    move-object v7, p5

    invoke-static/range {v1 .. v7}, Lcom/miui/gallery/provider/CloudUtils;->addToAlbum(Landroid/content/Context;IIJZ[J)[J

    move-result-object v0

    return-object v0
.end method

.method public static move(Landroid/content/Context;JLjava/util/ArrayList;)[J
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "albumId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 68
    .local p3, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v0, 0x1

    invoke-static {p0, v0, p1, p2, p3}, Lcom/miui/gallery/provider/CloudUtils;->addToAlbum(Landroid/content/Context;IJLjava/util/ArrayList;)[J

    move-result-object v0

    return-object v0
.end method

.method public static varargs removeFromFavoritesById(Landroid/content/Context;[J)[J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ids"    # [J

    .prologue
    .line 304
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 305
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "operation_type"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 306
    const-string v2, "add_remove_by"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 307
    const-string v2, "extra_src_media_ids"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 308
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v4, "add_remove_favorite"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 311
    .local v1, "result":Landroid/os/Bundle;
    const-string v2, "ids"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v2

    return-object v2
.end method

.method public static varargs removeFromFavoritesByPath(Landroid/content/Context;[Ljava/lang/String;)[J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "paths"    # [Ljava/lang/String;

    .prologue
    .line 282
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 283
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "operation_type"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 284
    const-string v2, "add_remove_by"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 285
    const-string v2, "extra_src_paths"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v4, "add_remove_favorite"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 289
    .local v1, "result":Landroid/os/Bundle;
    const-string v2, "ids"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v2

    return-object v2
.end method

.method public static varargs removeFromFavoritesBySha1(Landroid/content/Context;[Ljava/lang/String;)[J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sha1"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    .line 260
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 261
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "operation_type"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 262
    const-string v2, "add_remove_by"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 263
    const-string v2, "extra_src_sha1"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v4, "add_remove_favorite"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 267
    .local v1, "result":Landroid/os/Bundle;
    const-string v2, "ids"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v2

    return-object v2
.end method

.method public static varargs removeFromSecret(Landroid/content/Context;J[J)[J
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "albumId"    # J
    .param p3, "mediaIds"    # [J

    .prologue
    .line 359
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 360
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "operation_type"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 361
    const-string v2, "extra_src_media_ids"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 362
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v4, "add_remove_secret"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 363
    .local v1, "result":Landroid/os/Bundle;
    const-string v2, "ids"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v2

    return-object v2
.end method

.method public static renameAlbum(Landroid/content/Context;JLjava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "albumId"    # J
    .param p3, "newName"    # Ljava/lang/String;

    .prologue
    .line 26
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 27
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "album_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/provider/GalleryContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v3, "rename_album"

    invoke-virtual {v1, v2, v3, p3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method public static unforceTop(Landroid/content/Context;Landroid/net/Uri;[J)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "ids"    # [J

    .prologue
    .line 243
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 244
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "album_id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 245
    const-string/jumbo v1, "unforce_top"

    invoke-static {p0, p1, v1, v0}, Lcom/miui/gallery/provider/CloudUtils;->callMethodAsync(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 246
    return-void
.end method

.method public static updateAlbumAttributes(Landroid/content/Context;Landroid/net/Uri;JJZZ)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "id"    # J
    .param p4, "attributeBit"    # J
    .param p6, "set"    # Z
    .param p7, "manual"    # Z

    .prologue
    .line 315
    const/4 v0, 0x1

    new-array v3, v0, [J

    const/4 v0, 0x0

    aput-wide p2, v3, v0

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p4

    move v6, p6

    move v7, p7

    invoke-static/range {v1 .. v7}, Lcom/miui/gallery/provider/CloudUtils;->updateAlbumAttributes(Landroid/content/Context;Landroid/net/Uri;[JJZZ)V

    .line 316
    return-void
.end method

.method public static updateAlbumAttributes(Landroid/content/Context;Landroid/net/Uri;[JJZZ)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "ids"    # [J
    .param p3, "attributeBit"    # J
    .param p5, "set"    # Z
    .param p6, "manual"    # Z

    .prologue
    .line 319
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 320
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "album_id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 321
    const-string v1, "attributes_bit"

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 322
    const-string v1, "set"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 323
    const-string v1, "manual"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 324
    const-string/jumbo v1, "set_album_attributes"

    invoke-static {p0, p1, v1, v0}, Lcom/miui/gallery/provider/CloudUtils;->callMethodAsync(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 325
    return-void
.end method
