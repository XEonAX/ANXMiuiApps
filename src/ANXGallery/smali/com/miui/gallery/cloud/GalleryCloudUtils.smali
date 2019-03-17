.class public Lcom/miui/gallery/cloud/GalleryCloudUtils;
.super Ljava/lang/Object;
.source "GalleryCloudUtils.java"


# static fields
.field public static final BASE_URI:Landroid/net/Uri;

.field public static final CLOUD_CACHE_URI:Landroid/net/Uri;

.field public static final CLOUD_SETTING_URI:Landroid/net/Uri;

.field public static final CLOUD_URI:Landroid/net/Uri;

.field public static final CLOUD_USER_URI:Landroid/net/Uri;

.field public static final NEW_FLAG_CACHE:Landroid/net/Uri;

.field public static final OWNER_SUB_UBIFOCUS_URI:Landroid/net/Uri;

.field public static final SHARE_ALBUM_URI:Landroid/net/Uri;

.field public static final SHARE_IMAGE_URI:Landroid/net/Uri;

.field public static final SHARE_SUB_UBIFOCUS_URI:Landroid/net/Uri;

.field public static final SHARE_USER_URI:Landroid/net/Uri;

.field public static final USER_INFO_URI:Landroid/net/Uri;

.field private static sAccount:Landroid/accounts/Account;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const-string v0, "content://com.miui.gallery.cloud.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->BASE_URI:Landroid/net/Uri;

    .line 44
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "cloud"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    .line 45
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "cloudSetting"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_SETTING_URI:Landroid/net/Uri;

    .line 47
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "shareAlbum"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_ALBUM_URI:Landroid/net/Uri;

    .line 48
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "shareUser"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_USER_URI:Landroid/net/Uri;

    .line 49
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "shareImage"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_IMAGE_URI:Landroid/net/Uri;

    .line 50
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "cloudUser"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_USER_URI:Landroid/net/Uri;

    .line 51
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "cloudCache"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_CACHE_URI:Landroid/net/Uri;

    .line 52
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "newFlagCache"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->NEW_FLAG_CACHE:Landroid/net/Uri;

    .line 53
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "userInfo"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->USER_INFO_URI:Landroid/net/Uri;

    .line 55
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "ownerSubUbifocus"

    .line 56
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->OWNER_SUB_UBIFOCUS_URI:Landroid/net/Uri;

    .line 57
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "shareSubUbifocus"

    .line 58
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_SUB_UBIFOCUS_URI:Landroid/net/Uri;

    .line 57
    return-void
.end method

.method public static convertDoubleToLaLon(D)Ljava/lang/String;
    .locals 12
    .param p0, "value"    # D

    .prologue
    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    .line 269
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v0, v6

    .line 270
    .local v0, "degrees":I
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    int-to-double v8, v0

    sub-double/2addr v6, v8

    mul-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    .line 271
    .local v2, "minutes":D
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    int-to-double v8, v0

    sub-double/2addr v6, v8

    div-double v8, v2, v10

    sub-double/2addr v6, v8

    const-wide v8, 0x414b774000000000L    # 3600000.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    .line 272
    .local v4, "seconds":D
    const-wide/16 v6, 0x0

    cmpg-double v1, p0, v6

    if-gez v1, :cond_0

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "/1,"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "/1,"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "/1000"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 275
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "/1,"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "/1,"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "/1000"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static ensureDateTakenAndLocation(Ljava/lang/String;ZLandroid/content/ContentValues;)V
    .locals 6
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "isImage"    # Z
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 217
    if-eqz p1, :cond_0

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 218
    .local v0, "uri":Landroid/net/Uri;
    :goto_0
    if-eqz p1, :cond_1

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "datetaken"

    aput-object v2, v1, v4

    const-string v2, "latitude"

    aput-object v2, v1, v3

    const-string v2, "longitude"

    aput-object v2, v1, v5

    .line 229
    .local v1, "projection":[Ljava/lang/String;
    :goto_1
    invoke-static {v0, v3}, Lcom/miui/gallery/util/UriUtil;->appendLimit(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    .line 230
    const-string v2, "_data = ? "

    new-array v3, v3, [Ljava/lang/String;

    aput-object p0, v3, v4

    const/4 v4, 0x0

    new-instance v5, Lcom/miui/gallery/cloud/GalleryCloudUtils$1;

    invoke-direct {v5, p2}, Lcom/miui/gallery/cloud/GalleryCloudUtils$1;-><init>(Landroid/content/ContentValues;)V

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/util/GalleryUtils;->safeQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/GalleryUtils$QueryHandler;)Ljava/lang/Object;

    .line 262
    return-void

    .line 217
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "projection":[Ljava/lang/String;
    :cond_0
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 218
    .restart local v0    # "uri":Landroid/net/Uri;
    :cond_1
    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "datetaken"

    aput-object v2, v1, v4

    const-string v2, "latitude"

    aput-object v2, v1, v3

    const-string v2, "longitude"

    aput-object v2, v1, v5

    goto :goto_1
.end method

.method private static declared-synchronized getAccount()Landroid/accounts/Account;
    .locals 3

    .prologue
    .line 75
    const-class v2, Lcom/miui/gallery/cloud/GalleryCloudUtils;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/miui/gallery/cloud/GalleryCloudUtils;->sAccount:Landroid/accounts/Account;

    if-nez v1, :cond_0

    .line 76
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 77
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/miui/account/AccountHelper;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    sput-object v1, Lcom/miui/gallery/cloud/GalleryCloudUtils;->sAccount:Landroid/accounts/Account;

    .line 79
    :cond_0
    sget-object v1, Lcom/miui/gallery/cloud/GalleryCloudUtils;->sAccount:Landroid/accounts/Account;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 75
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getAccountName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 66
    .local v0, "account":Landroid/accounts/Account;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    const-string v1, ""

    :goto_0
    return-object v1

    :cond_1
    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getFocusIndexColumnElement(Z)Ljava/lang/String;
    .locals 2
    .param p0, "isShare"    # Z

    .prologue
    .line 113
    if-eqz p0, :cond_0

    const/16 v0, 0x35

    .line 114
    .local v0, "indexEditedColumns":I
    :goto_0
    invoke-static {v0}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->transformToEditedColumnsElement(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 113
    .end local v0    # "indexEditedColumns":I
    :cond_0
    const/16 v0, 0x3b

    goto :goto_0
.end method

.method public static isGalleryCloudSyncable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-static {}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 88
    .local v0, "account":Landroid/accounts/Account;
    if-nez v0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v1

    .line 91
    :cond_1
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "com.miui.gallery.cloud.provider"

    .line 92
    invoke-static {v0, v2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static mergeEditedColumns(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "lhs"    # Ljava/lang/String;
    .param p1, "rhs"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object p0, p1

    .line 137
    .end local p0    # "lhs":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 126
    .restart local p0    # "lhs":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 130
    const-string v3, ",+"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "elements":[Ljava/lang/String;
    array-length v4, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v0, v1, v3

    .line 132
    .local v0, "element":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 133
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "transformedElement":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {p1, v2, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 131
    .end local v2    # "transformedElement":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "element":Ljava/lang/String;
    :cond_3
    move-object p0, p1

    .line 137
    goto :goto_0
.end method

.method private static putExifIntToContentValues(Landroid/support/media/ExifInterface;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 3
    .param p0, "exifInterface"    # Landroid/support/media/ExifInterface;
    .param p1, "exifkey"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "contentKey"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 110
    :goto_0
    return-void

    .line 106
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, p3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "ex":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public static putValuesForImage(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 7
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 161
    new-instance v1, Landroid/support/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/support/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 162
    .local v1, "exifInterface":Landroid/support/media/ExifInterface;
    const-string/jumbo v4, "title"

    invoke-static {p0}, Lmiui/os/ExtraFileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lmiui/os/ExtraFileUtils;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v4, "ImageWidth"

    invoke-virtual {v1, v4, v6}, Landroid/support/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    .line 164
    .local v3, "width":I
    const-string v4, "ImageLength"

    invoke-virtual {v1, v4, v6}, Landroid/support/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    .line 165
    .local v2, "height":I
    if-lez v3, :cond_0

    if-gtz v2, :cond_1

    .line 167
    :cond_0
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->getBitmapProvider()Lcom/miui/gallery/util/deviceprovider/BitmapProviderInterface;

    move-result-object v4

    .line 168
    invoke-interface {v4, p0}, Lcom/miui/gallery/util/deviceprovider/BitmapProviderInterface;->getBitmapSize(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 169
    .local v0, "bitmapOptions":Landroid/graphics/BitmapFactory$Options;
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 170
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 172
    .end local v0    # "bitmapOptions":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    const-string v4, "exifImageWidth"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 173
    const-string v4, "exifImageLength"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 175
    const-string v4, "exifOrientation"

    const-string v5, "Orientation"

    .line 176
    invoke-virtual {v1, v5, v6}, Landroid/support/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 175
    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 177
    const-string v4, "exifGPSLatitude"

    const-string v5, "GPSLatitude"

    .line 178
    invoke-virtual {v1, v5}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 177
    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v4, "exifGPSLongitude"

    const-string v5, "GPSLongitude"

    .line 180
    invoke-virtual {v1, v5}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 179
    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v4, "exifMake"

    const-string v5, "Make"

    .line 182
    invoke-virtual {v1, v5}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 181
    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v4, "exifModel"

    const-string v5, "Model"

    .line 184
    invoke-virtual {v1, v5}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 183
    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v4, "Flash"

    const-string v5, "exifFlash"

    invoke-static {v1, v4, p1, v5}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->putExifIntToContentValues(Landroid/support/media/ExifInterface;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 187
    const-string v4, "exifGPSLatitudeRef"

    const-string v5, "GPSLatitudeRef"

    .line 188
    invoke-virtual {v1, v5}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 187
    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v4, "exifGPSLongitudeRef"

    const-string v5, "GPSLongitudeRef"

    .line 190
    invoke-virtual {v1, v5}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 189
    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v4, "exifExposureTime"

    const-string v5, "ExposureTime"

    .line 192
    invoke-virtual {v1, v5}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 191
    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v4, "exifFNumber"

    const-string v5, "FNumber"

    .line 194
    invoke-virtual {v1, v5}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 193
    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v4, "exifISOSpeedRatings"

    const-string v5, "ISOSpeedRatings"

    .line 196
    invoke-virtual {v1, v5}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 195
    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v4, "exifGPSAltitude"

    const-string v5, "GPSAltitude"

    .line 198
    invoke-virtual {v1, v5}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 197
    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v4, "GPSAltitudeRef"

    const-string v5, "exifGPSAltitudeRef"

    invoke-static {v1, v4, p1, v5}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->putExifIntToContentValues(Landroid/support/media/ExifInterface;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 201
    const-string v4, "exifGPSTimeStamp"

    const-string v5, "GPSTimeStamp"

    .line 202
    invoke-virtual {v1, v5}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 201
    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v4, "exifGPSDateStamp"

    const-string v5, "GPSDateStamp"

    .line 204
    invoke-virtual {v1, v5}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 203
    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v4, "WhiteBalance"

    const-string v5, "exifWhiteBalance"

    invoke-static {v1, v4, p1, v5}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->putExifIntToContentValues(Landroid/support/media/ExifInterface;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 207
    const-string v4, "exifFocalLength"

    const-string v5, "FocalLength"

    .line 208
    invoke-virtual {v1, v5}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 207
    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v4, "exifGPSProcessingMethod"

    const-string v5, "GPSProcessingMethod"

    .line 210
    invoke-virtual {v1, v5}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 209
    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v4, "exifDateTime"

    const-string v5, "DateTime"

    .line 212
    invoke-virtual {v1, v5}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 211
    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const/4 v4, 0x1

    invoke-static {p0, v4, p1}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->ensureDateTakenAndLocation(Ljava/lang/String;ZLandroid/content/ContentValues;)V

    .line 214
    return-void
.end method

.method public static putValuesForVideo(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 10
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 141
    const/4 v2, 0x0

    .line 143
    .local v2, "reader":Lcom/miui/gallery/util/VideoAttrsReader;
    :try_start_0
    invoke-static {p0}, Lcom/miui/gallery/util/VideoAttrsReader;->read(Ljava/lang/String;)Lcom/miui/gallery/util/VideoAttrsReader;
    :try_end_0
    .catch Lcom/miui/gallery/util/VideoAttrsReader$VideoAttrsUnretrivableException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 151
    const-string/jumbo v4, "title"

    invoke-virtual {v2}, Lcom/miui/gallery/util/VideoAttrsReader;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v4, "duration"

    invoke-virtual {v2}, Lcom/miui/gallery/util/VideoAttrsReader;->getDuration()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 153
    const-string v4, "dateTaken"

    invoke-virtual {v2}, Lcom/miui/gallery/util/VideoAttrsReader;->getDateTaken()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 154
    const-string v4, "exifImageWidth"

    invoke-virtual {v2}, Lcom/miui/gallery/util/VideoAttrsReader;->getVideoWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    const-string v4, "exifImageLength"

    invoke-virtual {v2}, Lcom/miui/gallery/util/VideoAttrsReader;->getVideoHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 156
    invoke-static {p0, v3, p1}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->ensureDateTakenAndLocation(Ljava/lang/String;ZLandroid/content/ContentValues;)V

    .line 157
    const/4 v3, 0x1

    :goto_0
    return v3

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Lcom/miui/gallery/util/VideoAttrsReader$VideoAttrsUnretrivableException;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 146
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "fileName"

    invoke-static {p0}, Lcom/miui/gallery/util/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v4, "Sync"

    const-string v5, "read_video_attrs_failed"

    invoke-static {v4, v5, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static declared-synchronized resetAccountCache()V
    .locals 2

    .prologue
    .line 70
    const-class v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/miui/gallery/cloud/GalleryCloudUtils;->sAccount:Landroid/accounts/Account;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit v0

    return-void

    .line 70
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static transformToEditedColumnsElement(I)Ljava/lang/String;
    .locals 2
    .param p0, "columnIndex"    # I

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
