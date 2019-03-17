.class public Lcom/miui/gallery/provider/ShareMediaManager;
.super Ljava/lang/Object;
.source "ShareMediaManager.java"


# static fields
.field private static sShareMediaMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/gallery/provider/ShareMediaManager;->sShareMediaMap:Ljava/util/Map;

    .line 24
    sget-object v0, Lcom/miui/gallery/provider/ShareMediaManager;->sShareMediaMap:Ljava/util/Map;

    const-string v1, "_id"

    const-string v2, "1073741823+_id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/miui/gallery/provider/ShareMediaManager;->sShareMediaMap:Ljava/util/Map;

    const-string/jumbo v1, "sha1"

    const-string/jumbo v2, "sha1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/miui/gallery/provider/ShareMediaManager;->sShareMediaMap:Ljava/util/Map;

    const-string v1, "localGroupId"

    const-string v2, "localGroupId"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/miui/gallery/provider/ShareMediaManager;->sShareMediaMap:Ljava/util/Map;

    const-string v1, "microthumbfile"

    const-string v2, "microthumbfile"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/miui/gallery/provider/ShareMediaManager;->sShareMediaMap:Ljava/util/Map;

    const-string/jumbo v1, "thumbnailFile"

    const-string/jumbo v2, "thumbnailFile"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/miui/gallery/provider/ShareMediaManager;->sShareMediaMap:Ljava/util/Map;

    const-string v1, "localFile"

    const-string v2, "localFile"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/miui/gallery/provider/ShareMediaManager;->sShareMediaMap:Ljava/util/Map;

    const-string v1, "serverType"

    const-string v2, "serverType"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/miui/gallery/provider/ShareMediaManager;->sShareMediaMap:Ljava/util/Map;

    const-string/jumbo v1, "title"

    const-string/jumbo v2, "title"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/miui/gallery/provider/ShareMediaManager;->sShareMediaMap:Ljava/util/Map;

    const-string v1, "duration"

    const-string v2, "duration"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/miui/gallery/provider/ShareMediaManager;->sShareMediaMap:Ljava/util/Map;

    const-string v1, "description"

    const-string v2, "description"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/miui/gallery/provider/ShareMediaManager;->sShareMediaMap:Ljava/util/Map;

    const-string/jumbo v1, "size"

    const-string/jumbo v2, "size"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/miui/gallery/provider/ShareMediaManager;->sShareMediaMap:Ljava/util/Map;

    const-string v1, "mimeType"

    const-string v2, "mimeType"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/miui/gallery/provider/ShareMediaManager;->sShareMediaMap:Ljava/util/Map;

    const-string v1, "location"

    const-string v2, "location"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/miui/gallery/provider/ShareMediaManager;->sShareMediaMap:Ljava/util/Map;

    const-string v1, "exifGPSLatitude"

    const-string v2, "exifGPSLatitude"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/miui/gallery/provider/ShareMediaManager;->sShareMediaMap:Ljava/util/Map;

    const-string v1, "exifGPSLatitudeRef"

    const-string v2, "exifGPSLatitudeRef"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/miui/gallery/provider/ShareMediaManager;->sShareMediaMap:Ljava/util/Map;

    const-string v1, "exifGPSLongitude"

    const-string v2, "exifGPSLongitude"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/miui/gallery/provider/ShareMediaManager;->sShareMediaMap:Ljava/util/Map;

    const-string v1, "exifGPSLongitudeRef"

    const-string v2, "exifGPSLongitudeRef"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/miui/gallery/provider/ShareMediaManager;->sShareMediaMap:Ljava/util/Map;

    const-string v1, "alias_micro_thumbnail"

    sget-object v2, Lcom/miui/gallery/provider/InternalContract$ShareImage;->ALIAS_MICRO_THUMBNAIL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/miui/gallery/provider/ShareMediaManager;->sShareMediaMap:Ljava/util/Map;

    const-string v1, "alias_create_time"

    const-string v2, " CASE WHEN mixedDateTime NOT NULL THEN mixedDateTime ELSE dateTaken END "

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/miui/gallery/provider/ShareMediaManager;->sShareMediaMap:Ljava/util/Map;

    const-string v1, "alias_create_date"

    const-string v2, "STRFTIME(\'%Y%m%d\', CASE WHEN mixedDateTime NOT NULL THEN mixedDateTime ELSE dateTaken END /1000, \'unixepoch\', \'localtime\')"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/miui/gallery/provider/ShareMediaManager;->sShareMediaMap:Ljava/util/Map;

    const-string v1, "alias_sync_state"

    const-string v2, " CASE WHEN localFlag = 0  THEN 0 WHEN localFlag IN (5, 6, 9) THEN 1 ELSE 3 END "

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/miui/gallery/provider/ShareMediaManager;->sShareMediaMap:Ljava/util/Map;

    const-string v1, "secretKey"

    const-string v2, "secretKey"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/miui/gallery/provider/ShareMediaManager;->sShareMediaMap:Ljava/util/Map;

    const-string v1, "exifImageWidth"

    const-string v2, "exifImageWidth"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/miui/gallery/provider/ShareMediaManager;->sShareMediaMap:Ljava/util/Map;

    const-string v1, "exifImageLength"

    const-string v2, "exifImageLength"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/miui/gallery/provider/ShareMediaManager;->sShareMediaMap:Ljava/util/Map;

    const-string v1, "serverId"

    const-string v2, "serverId"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/miui/gallery/provider/ShareMediaManager;->sShareMediaMap:Ljava/util/Map;

    const-string v1, "serverTag"

    const-string v2, "serverTag"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/miui/gallery/provider/ShareMediaManager;->sShareMediaMap:Ljava/util/Map;

    const-string v1, "creatorId"

    const-string v2, "creatorId"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/miui/gallery/provider/ShareMediaManager;->sShareMediaMap:Ljava/util/Map;

    const-string v1, "dateModified"

    const-string v2, "dateModified"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/miui/gallery/provider/ShareMediaManager;->sShareMediaMap:Ljava/util/Map;

    const-string v1, "alias_modify_date"

    const-string v2, "STRFTIME(\'%Y%m%d\',dateModified/1000, \'unixepoch\', \'localtime\')"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/miui/gallery/provider/ShareMediaManager;->sShareMediaMap:Ljava/util/Map;

    const-string v1, "alias_clear_thumbnail"

    sget-object v2, Lcom/miui/gallery/provider/InternalContract$ShareImage;->ALIAS_CLEAR_FIRST:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/miui/gallery/provider/ShareMediaManager;->sShareMediaMap:Ljava/util/Map;

    const-string v1, "localFlag"

    const-string v2, "localFlag"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/miui/gallery/provider/ShareMediaManager;->sShareMediaMap:Ljava/util/Map;

    const-string v1, "serverStatus"

    const-string v2, "serverStatus"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/miui/gallery/provider/ShareMediaManager;->sShareMediaMap:Ljava/util/Map;

    const-string v1, "alias_is_favorite"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/miui/gallery/provider/ShareMediaManager;->sShareMediaMap:Ljava/util/Map;

    const-string/jumbo v1, "specialTypeFlags"

    const-string/jumbo v2, "specialTypeFlags"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/miui/gallery/provider/ShareMediaManager;->sShareMediaMap:Ljava/util/Map;

    const-string v1, "alias_sort_time"

    const-string v2, " CASE WHEN mixedDateTime NOT NULL THEN mixedDateTime ELSE dateTaken END "

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/miui/gallery/provider/ShareMediaManager;->sShareMediaMap:Ljava/util/Map;

    const-string v1, "alias_sort_date"

    const-string v2, "STRFTIME(\'%Y%m%d\', CASE WHEN mixedDateTime NOT NULL THEN mixedDateTime ELSE dateTaken END /1000, \'unixepoch\', \'localtime\')"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method

.method public static convertToMediaId(J)J
    .locals 2
    .param p0, "id"    # J

    .prologue
    .line 112
    const-wide/32 v0, 0x3fffffff

    add-long/2addr v0, p0

    return-wide v0
.end method

.method private static generateHeaderInfo(Landroid/database/Cursor;)Landroid/os/Bundle;
    .locals 12
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x0

    const/4 v11, 0x1

    const/4 v10, -0x1

    .line 181
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-lez v9, :cond_0

    .line 182
    const-string v9, "alias_create_date"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v10, :cond_0

    const-string v9, "location"

    .line 183
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v10, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-object v3

    .line 187
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v1, "counts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v8, "startPos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v7, "locations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v6, "locationTemp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 192
    .local v4, "id":Ljava/lang/Integer;
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 193
    .local v0, "count":Ljava/lang/Integer;
    const/4 v5, 0x0

    .line 194
    .local v5, "index":I
    :cond_2
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 195
    invoke-static {p0}, Lcom/miui/gallery/provider/ShareMediaManager;->getLocation(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, "cursorLocation":Ljava/lang/String;
    invoke-static {v4, v10}, Lcom/miui/gallery/util/Numbers;->equals(Ljava/lang/Number;I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 197
    invoke-static {p0}, Lcom/miui/gallery/provider/ShareMediaManager;->getJulianDay(Landroid/database/Cursor;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 198
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 215
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-ne v5, v9, :cond_2

    .line 216
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    invoke-static {}, Lcom/miui/gallery/data/LocationManager;->getInstance()Lcom/miui/gallery/data/LocationManager;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/miui/gallery/data/LocationManager;->generateTitleLine(Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 200
    :cond_3
    invoke-static {p0}, Lcom/miui/gallery/provider/ShareMediaManager;->getJulianDay(Landroid/database/Cursor;)I

    move-result v9

    invoke-static {v4, v9}, Lcom/miui/gallery/util/Numbers;->equals(Ljava/lang/Number;I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 201
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 202
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 204
    :cond_4
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 207
    invoke-static {}, Lcom/miui/gallery/data/LocationManager;->getInstance()Lcom/miui/gallery/data/LocationManager;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/miui/gallery/data/LocationManager;->generateTitleLine(Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 209
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-static {p0}, Lcom/miui/gallery/provider/ShareMediaManager;->getJulianDay(Landroid/database/Cursor;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 212
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 220
    .end local v2    # "cursorLocation":Ljava/lang/String;
    :cond_5
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 221
    .local v3, "extras":Landroid/os/Bundle;
    const-string v9, "extra_timeline_item_count_in_group"

    invoke-virtual {v3, v9, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 224
    const-string v9, "extra_timeline_group_start_pos"

    invoke-virtual {v3, v9, v8}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 227
    const-string v9, "extra_timeline_group_start_locations"

    invoke-virtual {v3, v9, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method private static getJulianDay(Landroid/database/Cursor;)I
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 159
    const-string v0, "alias_create_date"

    .line 160
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 159
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method private static getLocation(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 164
    const-string v0, "location"

    .line 165
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 164
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMediaFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "albumId"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-static {p0, p1}, Lcom/miui/gallery/cloud/DownloadPathHelper;->addPostfixToFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOriginalMediaId(J)J
    .locals 2
    .param p0, "id"    # J

    .prologue
    .line 108
    const-wide/32 v0, 0x3fffffff

    sub-long v0, p0, v0

    return-wide v0
.end method

.method public static getOwnerSharedImageIds(Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 121
    :cond_0
    const/4 v2, 0x0

    .line 138
    :cond_1
    return-object v2

    .line 124
    :cond_2
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/account/AccountHelper;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 125
    .local v0, "account":Landroid/accounts/Account;
    const/4 v2, 0x0

    .line 126
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v0, :cond_1

    .line 127
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .restart local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 132
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 133
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/miui/gallery/provider/ShareMediaManager;->isSharedImageUnsynced(J)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 134
    :cond_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getShareMediaTable()Ljava/lang/String;
    .locals 5

    .prologue
    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .local v1, "sqlShareImageColumns":Ljava/lang/StringBuilder;
    sget-object v3, Lcom/miui/gallery/provider/ShareMediaManager;->sShareMediaMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 67
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string v3, " AS "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 75
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .local v2, "sqlTable":Ljava/lang/StringBuilder;
    const-string v3, "(SELECT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 78
    const-string v3, " FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string/jumbo v3, "shareImage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v3, " WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string v3, "(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\'))"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static isOtherShareMediaId(J)Z
    .locals 2
    .param p0, "id"    # J

    .prologue
    .line 103
    const-wide/32 v0, 0x3fffffff

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSharedImageUnsynced(J)Z
    .locals 12
    .param p0, "id"    # J

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 142
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$ShareImage;->SHARE_URI:Landroid/net/Uri;

    const-string v3, "_id = ? AND serverId IS NULL"

    new-array v4, v7, [Ljava/lang/String;

    .line 145
    invoke-static {p0, p1}, Lcom/miui/gallery/provider/ShareMediaManager;->getOriginalMediaId(J)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    move-object v5, v2

    .line 142
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 147
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 149
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    move v0, v7

    .line 151
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 154
    :goto_1
    return v0

    :cond_0
    move v0, v8

    .line 149
    goto :goto_0

    .line 151
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    move v0, v8

    .line 154
    goto :goto_1
.end method

.method private static isSupportTimelineCursor(Landroid/database/Cursor;)Z
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, -0x1

    .line 169
    if-eqz p0, :cond_0

    const-string v0, "alias_create_date"

    .line 171
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_0

    const-string v0, "location"

    .line 172
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 173
    const/4 v0, 0x1

    .line 175
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "groupBy"    # Ljava/lang/String;
    .param p5, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-static {}, Lcom/miui/gallery/provider/ShareMediaManager;->getShareMediaTable()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 91
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {v9}, Lcom/miui/gallery/provider/ShareMediaManager;->isSupportTimelineCursor(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    instance-of v0, v9, Landroid/database/AbstractCursor;

    if-eqz v0, :cond_0

    .line 93
    invoke-static {v9}, Lcom/miui/gallery/provider/ShareMediaManager;->generateHeaderInfo(Landroid/database/Cursor;)Landroid/os/Bundle;

    move-result-object v8

    .line 94
    .local v8, "bundle":Landroid/os/Bundle;
    if-eqz v8, :cond_0

    move-object v0, v9

    .line 95
    check-cast v0, Landroid/database/AbstractCursor;

    invoke-virtual {v0, v8}, Landroid/database/AbstractCursor;->setExtras(Landroid/os/Bundle;)V

    .line 99
    .end local v8    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-object v9
.end method
