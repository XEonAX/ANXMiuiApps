.class public Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;
.super Ljava/lang/Object;
.source "GalleryCloudSyncTagUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;,
        Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;
    }
.end annotation


# static fields
.field private static sColumnNameToPushNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sSyncTagConstantsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSyncTagLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->sSyncTagLock:Ljava/lang/Object;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->sSyncTagConstantsMap:Ljava/util/HashMap;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->sColumnNameToPushNameMap:Ljava/util/HashMap;

    .line 118
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->sColumnNameToPushNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "syncTag"

    const-string v2, "micloud.gallery.sync"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->sColumnNameToPushNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "shareSyncTagAlbumList"

    const-string v2, "micloud.gallery.albumlist.sync"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->sColumnNameToPushNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "shareSyncTagAlbumInfo"

    const-string v2, "micloud.gallery.albuminfo.sync"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->sColumnNameToPushNameMap:Ljava/util/HashMap;

    const-string v1, "ownerSyncTagUserList"

    const-string v2, "micloud.gallery.sharerlist.sync"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->sColumnNameToPushNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "shareSyncTagImageList"

    const-string v2, "micloud.gallery.imagelist.sync"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->sColumnNameToPushNameMap:Ljava/util/HashMap;

    const-string v1, "faceWatermark"

    const-string v2, "gallery-facerecognition"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v10, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->sSyncTagConstantsMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;

    const-string/jumbo v1, "syncTag"

    const-string/jumbo v2, "syncTag"

    const-string/jumbo v3, "syncTag"

    const-string v4, "micloud.gallery.sync"

    sget-object v8, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_SETTING_URI:Landroid/net/Uri;

    const-string/jumbo v9, "syncInfo"

    move v7, v5

    invoke-direct/range {v0 .. v9}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLandroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v10, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->sSyncTagConstantsMap:Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;

    const-string v1, "ownerSyncTagUserList"

    const-string v2, "mySharerListsTag"

    const-string/jumbo v3, "sharerlist"

    const-string v4, "micloud.gallery.sharerlist.sync"

    sget-object v8, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_SETTING_URI:Landroid/net/Uri;

    const-string/jumbo v9, "shareSyncInfo"

    move v7, v5

    invoke-direct/range {v0 .. v9}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLandroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v10, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->sSyncTagConstantsMap:Ljava/util/HashMap;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;

    const-string/jumbo v1, "shareSyncTagAlbumList"

    const-string v2, "albumListTag"

    const-string v3, "albumlist"

    const-string v4, "micloud.gallery.albumlist.sync"

    sget-object v8, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_SETTING_URI:Landroid/net/Uri;

    const-string/jumbo v9, "shareSyncInfo"

    move v7, v6

    invoke-direct/range {v0 .. v9}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLandroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v10, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->sSyncTagConstantsMap:Ljava/util/HashMap;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;

    const-string/jumbo v1, "shareSyncTagAlbumInfo"

    const-string v2, "albumInfoTag"

    const-string v3, "albuminfo"

    const-string v4, "micloud.gallery.albuminfo.sync"

    sget-object v8, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_SETTING_URI:Landroid/net/Uri;

    const-string/jumbo v9, "shareSyncInfo"

    move v7, v6

    invoke-direct/range {v0 .. v9}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLandroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v10, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->sSyncTagConstantsMap:Ljava/util/HashMap;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;

    const-string/jumbo v1, "shareSyncTagImageList"

    const-string v2, "imageListTag"

    const-string v3, "imagelist"

    const-string v4, "micloud.gallery.imagelist.sync"

    sget-object v8, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_SETTING_URI:Landroid/net/Uri;

    const-string/jumbo v9, "shareSyncInfo"

    move v7, v6

    invoke-direct/range {v0 .. v9}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLandroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v10, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->sSyncTagConstantsMap:Ljava/util/HashMap;

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;

    const-string v1, "albumImageTag"

    const-string/jumbo v2, "syncTag"

    const-string/jumbo v3, "syncTag"

    sget-object v8, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_ALBUM_URI:Landroid/net/Uri;

    const-string/jumbo v9, "syncInfo"

    move-object v4, v12

    move v6, v5

    move v7, v5

    invoke-direct/range {v0 .. v9}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLandroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v10, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->sSyncTagConstantsMap:Ljava/util/HashMap;

    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;

    const-string v1, "albumUserTag"

    const-string/jumbo v2, "updateTag"

    const-string/jumbo v3, "syncTag"

    sget-object v8, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_ALBUM_URI:Landroid/net/Uri;

    move-object v4, v12

    move v6, v5

    move v7, v5

    move-object v9, v12

    invoke-direct/range {v0 .. v9}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLandroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v10, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->sSyncTagConstantsMap:Ljava/util/HashMap;

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;

    const-string v1, "albumUserTag"

    const-string/jumbo v2, "updateTag"

    const-string/jumbo v3, "syncTag"

    sget-object v8, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    move-object v4, v12

    move v6, v5

    move v7, v5

    move-object v9, v12

    invoke-direct/range {v0 .. v9}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLandroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v10, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->sSyncTagConstantsMap:Ljava/util/HashMap;

    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;

    const-string v1, "faceWatermark"

    const-string v4, "gallery-facerecognition"

    sget-object v8, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_SETTING_URI:Landroid/net/Uri;

    move-object v2, v12

    move-object v3, v12

    move v6, v5

    move v7, v5

    move-object v9, v12

    invoke-direct/range {v0 .. v9}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLandroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    return-void
.end method

.method public static getAccountSelections(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 2
    .param p0, "account"    # Landroid/accounts/Account;

    .prologue
    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "accountName = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "accountType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCardSyncInfo(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 1
    .param p0, "account"    # Landroid/accounts/Account;

    .prologue
    .line 326
    invoke-static {p0}, Lcom/miui/gallery/card/SyncTagUtil;->getCardSyncInfo(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCardSyncTag(Landroid/accounts/Account;)J
    .locals 2
    .param p0, "account"    # Landroid/accounts/Account;

    .prologue
    .line 317
    invoke-static {p0}, Lcom/miui/gallery/card/SyncTagUtil;->getCardSyncTag(Landroid/accounts/Account;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getColumnName(I)Ljava/lang/String;
    .locals 3
    .param p0, "syncType"    # I

    .prologue
    .line 480
    sget-object v1, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->sSyncTagConstantsMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;

    .line 481
    .local v0, "syncTagCostant":Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;
    if-eqz v0, :cond_0

    .line 482
    iget-object v1, v0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;->columnName:Ljava/lang/String;

    .line 484
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getFaceSyncToken(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 6
    .param p0, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 289
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_SETTING_URI:Landroid/net/Uri;

    .line 290
    invoke-static {v0, v1}, Lcom/miui/gallery/cloud/CloudUtils;->getLimitUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "faceSyncToken"

    aput-object v4, v1, v2

    .line 292
    invoke-static {p0}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->getAccountSelections(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$2;

    invoke-direct {v5}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$2;-><init>()V

    move-object v4, v3

    .line 289
    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/util/GalleryUtils;->safeQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/GalleryUtils$QueryHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getInitSyncTagValue(I)I
    .locals 3
    .param p0, "syncType"    # I

    .prologue
    .line 448
    sget-object v1, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->sSyncTagConstantsMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;

    .line 449
    .local v0, "syncTagCostant":Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;
    if-eqz v0, :cond_0

    .line 450
    iget v1, v0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;->initValue:I

    .line 452
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getJsonTagInput(I)Ljava/lang/String;
    .locals 3
    .param p0, "syncType"    # I

    .prologue
    .line 464
    sget-object v1, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->sSyncTagConstantsMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;

    .line 465
    .local v0, "syncTagCostant":Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;
    if-eqz v0, :cond_0

    .line 466
    iget-object v1, v0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;->jsonTagInput:Ljava/lang/String;

    .line 468
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getJsonTagOutput(I)Ljava/lang/String;
    .locals 3
    .param p0, "syncType"    # I

    .prologue
    .line 472
    sget-object v1, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->sSyncTagConstantsMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;

    .line 473
    .local v0, "syncTagCostant":Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;
    if-eqz v0, :cond_0

    .line 474
    iget-object v1, v0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;->jsonTagOutput:Ljava/lang/String;

    .line 476
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSyncInfoColumnName(I)Ljava/lang/String;
    .locals 3
    .param p0, "syncType"    # I

    .prologue
    .line 504
    sget-object v1, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->sSyncTagConstantsMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;

    .line 505
    .local v0, "syncTagConstant":Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;
    if-eqz v0, :cond_0

    .line 506
    iget-object v1, v0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;->syncInfoColumnName:Ljava/lang/String;

    .line 508
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSyncTag(Landroid/content/Context;Landroid/accounts/Account;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/accounts/Account;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    .local p2, "syncTagList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;>;"
    sget-object v8, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->sSyncTagLock:Ljava/lang/Object;

    monitor-enter v8

    .line 240
    const/4 v0, 0x0

    .line 242
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->getSyncTagCursorByAccount(Landroid/content/Context;Landroid/accounts/Account;Ljava/util/ArrayList;)Landroid/database/Cursor;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 244
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 245
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 247
    .local v2, "cursorValue":J
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;

    sget-object v9, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->sSyncTagConstantsMap:Ljava/util/HashMap;

    .line 248
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;

    iget v7, v7, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;->syncTagType:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;

    iget v7, v7, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;->initValue:I

    int-to-long v10, v7

    .line 247
    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    iput-wide v10, v6, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;->currentValue:J

    .line 244
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 251
    .end local v2    # "cursorValue":J
    .end local v4    # "i":I
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;

    .line 252
    .local v5, "syncTag":Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;
    sget-object v6, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->sSyncTagConstantsMap:Ljava/util/HashMap;

    iget v9, v5, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;->syncTagType:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;

    iget v6, v6, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;->initValue:I

    int-to-long v10, v6

    iput-wide v10, v5, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;->currentValue:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_1

    .line 255
    .end local v5    # "syncTag":Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;
    :catch_0
    move-exception v1

    .line 256
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 258
    if-eqz v0, :cond_1

    .line 259
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 262
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    monitor-exit v8

    .line 263
    return-object p2

    .line 258
    :cond_2
    if-eqz v0, :cond_1

    .line 259
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 262
    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 258
    :catchall_1
    move-exception v6

    if-eqz v0, :cond_3

    .line 259
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private static getSyncTagCursorByAccount(Landroid/content/Context;Landroid/accounts/Account;Ljava/util/ArrayList;)Landroid/database/Cursor;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/accounts/Account;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .local p2, "syncTagList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;>;"
    const/4 v4, 0x0

    .line 433
    if-nez p1, :cond_0

    .line 434
    const-string v0, "GalleryCloudSyncTagUtils"

    const-string v1, "account is null"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/SyncLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :goto_0
    return-object v4

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_SETTING_URI:Landroid/net/Uri;

    .line 442
    invoke-static {p2}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->getSyncTagSelection(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v2

    .line 443
    invoke-static {p1}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->getAccountSelections(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .line 440
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto :goto_0
.end method

.method public static getSyncTagSelection(Ljava/util/ArrayList;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 413
    .local p0, "syncTagList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 414
    :cond_0
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, " * "

    aput-object v3, v1, v2

    .line 422
    :cond_1
    return-object v1

    .line 418
    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 419
    .local v1, "result":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 420
    sget-object v3, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->sSyncTagConstantsMap:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;

    iget v2, v2, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;->syncTagType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;

    iget-object v2, v2, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;->columnName:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 419
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getUri(I)Landroid/net/Uri;
    .locals 3
    .param p0, "syncType"    # I

    .prologue
    .line 496
    sget-object v1, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->sSyncTagConstantsMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;

    .line 497
    .local v0, "syncTagConstant":Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;
    if-eqz v0, :cond_0

    .line 498
    iget-object v1, v0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;->uri:Landroid/net/Uri;

    .line 500
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static hasSyncInfo(I)Z
    .locals 3
    .param p0, "syncType"    # I

    .prologue
    .line 512
    sget-object v1, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->sSyncTagConstantsMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;

    .line 513
    .local v0, "syncTagCostant":Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;
    if-eqz v0, :cond_0

    .line 514
    invoke-virtual {v0}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;->hasSyncInfo()Z

    move-result v1

    .line 516
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static insertAccountToDB(Landroid/content/Context;Landroid/accounts/Account;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    .line 359
    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 360
    sget-object v3, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->sSyncTagLock:Ljava/lang/Object;

    monitor-enter v3

    .line 361
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 363
    .local v1, "values":Landroid/content/ContentValues;
    sget-object v2, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->sSyncTagConstantsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;

    .line 364
    .local v0, "syncTagConstant":Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;
    iget-boolean v4, v0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;->shouldInsertCloudSetting:Z

    if-eqz v4, :cond_0

    .line 365
    iget-object v4, v0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;->columnName:Ljava/lang/String;

    iget v5, v0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;->initValue:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 369
    .end local v0    # "syncTagConstant":Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;
    .end local v1    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 368
    .restart local v1    # "values":Landroid/content/ContentValues;
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-static {p0, p1, v1, v2}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->internalUpdateAccount(Landroid/content/Context;Landroid/accounts/Account;Landroid/content/ContentValues;Ljava/util/ArrayList;)V

    .line 369
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 370
    invoke-static {p1}, Lcom/miui/gallery/card/SyncTagUtil;->ensureAccount(Landroid/accounts/Account;)V

    .line 372
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_2
    return-void
.end method

.method private static internalUpdateAccount(Landroid/content/Context;Landroid/accounts/Account;Landroid/content/ContentValues;Ljava/util/ArrayList;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/accounts/Account;",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 377
    .local p3, "syncTagList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagItem;>;"
    const/4 v0, 0x0

    .line 379
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {p0, p1, p3}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->getSyncTagCursorByAccount(Landroid/content/Context;Landroid/accounts/Account;Ljava/util/ArrayList;)Landroid/database/Cursor;

    move-result-object v0

    .line 380
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 382
    :cond_0
    const-string v1, "accountName"

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v1, "accountType"

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    sget-object v1, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_SETTING_URI:Landroid/net/Uri;

    invoke-static {v1, p2}, Lcom/miui/gallery/util/GalleryUtils;->safeInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 392
    :goto_0
    invoke-static {p0, p2}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->postUpdateSyncTag(Landroid/content/Context;Landroid/content/ContentValues;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    if-eqz v0, :cond_1

    .line 395
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 398
    :cond_1
    :goto_1
    return-void

    .line 386
    :cond_2
    if-eqz p3, :cond_3

    :try_start_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_4

    .line 394
    :cond_3
    if-eqz v0, :cond_1

    .line 395
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 390
    :cond_4
    :try_start_2
    sget-object v1, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_SETTING_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, p2, v2, v3}, Lcom/miui/gallery/util/GalleryUtils;->safeUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 394
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_5

    .line 395
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
.end method

.method public static postUpdateSyncTag(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 401
    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 402
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v3, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->sColumnNameToPushNameMap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 403
    .local v1, "pushName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 407
    const-string v3, "GalleryCloudSyncTagUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pushName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pushData:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 410
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "pushName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static setCardSyncInfo(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 0
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "syncInfo"    # Ljava/lang/String;

    .prologue
    .line 330
    invoke-static {p0, p1}, Lcom/miui/gallery/card/SyncTagUtil;->setCardSyncInfo(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method public static setCardSyncTag(Landroid/accounts/Account;J)V
    .locals 1
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "cardSyncTag"    # J

    .prologue
    .line 321
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/card/SyncTagUtil;->setCardSyncTag(Landroid/accounts/Account;J)V

    .line 322
    return-void
.end method

.method public static setFaceSyncToken(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 4
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "syncToken"    # Ljava/lang/String;

    .prologue
    .line 303
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 304
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "faceSyncToken"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    sget-object v1, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_SETTING_URI:Landroid/net/Uri;

    .line 306
    invoke-static {p0}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->getAccountSelections(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 305
    invoke-static {v1, v0, v2, v3}, Lcom/miui/gallery/util/GalleryUtils;->safeUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 307
    return-void
.end method

.method public static setFaceSyncWatermark(Landroid/accounts/Account;J)V
    .locals 5
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "watermark"    # J

    .prologue
    .line 310
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 311
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "faceWatermark"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 312
    sget-object v1, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_SETTING_URI:Landroid/net/Uri;

    .line 313
    invoke-static {p0}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->getAccountSelections(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 312
    invoke-static {v1, v0, v2, v3}, Lcom/miui/gallery/util/GalleryUtils;->safeUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 314
    return-void
.end method

.method public static shouldSyncTagValue(I)Z
    .locals 3
    .param p0, "syncType"    # I

    .prologue
    .line 456
    sget-object v1, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->sSyncTagConstantsMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;

    .line 457
    .local v0, "syncTagCostant":Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;
    if-eqz v0, :cond_0

    .line 458
    iget-boolean v1, v0, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils$SyncTagConstant;->shouldCheckInit:Z

    .line 460
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
