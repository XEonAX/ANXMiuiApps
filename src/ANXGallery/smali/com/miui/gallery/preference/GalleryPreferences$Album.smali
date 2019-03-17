.class public Lcom/miui/gallery/preference/GalleryPreferences$Album;
.super Ljava/lang/Object;
.source "GalleryPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/preference/GalleryPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Album"
.end annotation


# direct methods
.method public static getCachedSortByModifyAlbumIds()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    const-string v0, "key_cached_album_sort_by_modify_album_ids"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getCachedSortByModifyAlbumPaths()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    const-string v0, "key_cached_album_sort_by_modify_album_paths"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getNextForceTopTime()J
    .locals 6

    .prologue
    .line 233
    const-string v2, "key_next_force_top_create_time"

    const-wide/16 v4, -0x3ea

    invoke-static {v2, v4, v5}, Lcom/miui/gallery/preference/PreferenceHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 236
    .local v0, "time":J
    const-string v2, "key_next_force_top_create_time"

    const-wide/16 v4, 0x1

    sub-long v4, v0, v4

    invoke-static {v2, v4, v5}, Lcom/miui/gallery/preference/PreferenceHelper;->putLong(Ljava/lang/String;J)V

    .line 238
    return-wide v0
.end method

.method public static getVirtualAlbumSortBy(JJ)J
    .locals 4
    .param p0, "albumId"    # J
    .param p2, "defaultValue"    # J

    .prologue
    .line 252
    const-string v0, "key_virtual_album_prefix_%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/miui/gallery/preference/PreferenceHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static isForceTopAlbumByTopTime(J)Z
    .locals 4
    .param p0, "time"    # J

    .prologue
    const-wide/16 v2, -0x3ea

    .line 242
    const-string v0, "key_next_force_top_create_time"

    invoke-static {v0, v2, v3}, Lcom/miui/gallery/preference/PreferenceHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    cmp-long v0, p0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setCachedSortByModifyAlbumIds(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 268
    .local p0, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "key_cached_album_sort_by_modify_album_ids"

    invoke-static {v0, p0}, Lcom/miui/gallery/preference/PreferenceHelper;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    .line 269
    return-void
.end method

.method public static setCachedSortByModifyAlbumPaths(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 260
    .local p0, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "key_cached_album_sort_by_modify_album_paths"

    invoke-static {v0, p0}, Lcom/miui/gallery/preference/PreferenceHelper;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    .line 261
    return-void
.end method

.method public static setVirtualAlbumSortBy(JJ)V
    .locals 4
    .param p0, "albumId"    # J
    .param p2, "dateTaken"    # J

    .prologue
    .line 248
    const-string v0, "key_virtual_album_prefix_%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/miui/gallery/preference/PreferenceHelper;->putLong(Ljava/lang/String;J)V

    .line 249
    return-void
.end method
