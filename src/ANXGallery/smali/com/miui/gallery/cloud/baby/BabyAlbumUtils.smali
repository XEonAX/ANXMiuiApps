.class public Lcom/miui/gallery/cloud/baby/BabyAlbumUtils;
.super Ljava/lang/Object;
.source "BabyAlbumUtils.java"


# static fields
.field public static BABY_ALBUM_BIRTHDAY:Ljava/lang/String;

.field public static BABY_ALBUM_NAME:Ljava/lang/String;

.field public static BABY_AUTO_UPDATE:Ljava/lang/String;

.field public static BABY_BABY:Ljava/lang/String;

.field public static BABY_BABY_ALBUM_LOCAL_ID:Ljava/lang/String;

.field public static BABY_FACE_ALBUM_LOCAL_ID:Ljava/lang/String;

.field public static BABY_GENDER:Ljava/lang/String;

.field public static BABY_MALE:Ljava/lang/String;

.field public static BABY_PEOPLE_ID:Ljava/lang/String;

.field public static BABY_RELATION:Ljava/lang/String;

.field public static BABY_RELATION_TEXT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "faceAlbumLocalId"

    sput-object v0, Lcom/miui/gallery/cloud/baby/BabyAlbumUtils;->BABY_FACE_ALBUM_LOCAL_ID:Ljava/lang/String;

    .line 25
    const-string v0, "babyAlbumLocalId"

    sput-object v0, Lcom/miui/gallery/cloud/baby/BabyAlbumUtils;->BABY_BABY_ALBUM_LOCAL_ID:Ljava/lang/String;

    .line 26
    const-string v0, "name"

    sput-object v0, Lcom/miui/gallery/cloud/baby/BabyAlbumUtils;->BABY_ALBUM_NAME:Ljava/lang/String;

    .line 27
    const-string v0, "birthday"

    sput-object v0, Lcom/miui/gallery/cloud/baby/BabyAlbumUtils;->BABY_ALBUM_BIRTHDAY:Ljava/lang/String;

    .line 29
    const-string v0, "gender"

    sput-object v0, Lcom/miui/gallery/cloud/baby/BabyAlbumUtils;->BABY_GENDER:Ljava/lang/String;

    .line 30
    const-string v0, "relation"

    sput-object v0, Lcom/miui/gallery/cloud/baby/BabyAlbumUtils;->BABY_RELATION:Ljava/lang/String;

    .line 31
    const-string v0, "relationText"

    sput-object v0, Lcom/miui/gallery/cloud/baby/BabyAlbumUtils;->BABY_RELATION_TEXT:Ljava/lang/String;

    .line 32
    const-string v0, "peopleId"

    sput-object v0, Lcom/miui/gallery/cloud/baby/BabyAlbumUtils;->BABY_PEOPLE_ID:Ljava/lang/String;

    .line 33
    const-string v0, "autoUpdate"

    sput-object v0, Lcom/miui/gallery/cloud/baby/BabyAlbumUtils;->BABY_AUTO_UPDATE:Ljava/lang/String;

    .line 34
    const-string v0, "baby"

    sput-object v0, Lcom/miui/gallery/cloud/baby/BabyAlbumUtils;->BABY_BABY:Ljava/lang/String;

    .line 35
    const-string v0, "male"

    sput-object v0, Lcom/miui/gallery/cloud/baby/BabyAlbumUtils;->BABY_MALE:Ljava/lang/String;

    return-void
.end method

.method public static isBabyAlbumForThisServerId(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serverId"    # Ljava/lang/String;
    .param p2, "isShared"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 87
    if-nez p2, :cond_1

    .line 88
    const-string v3, "serverId"

    invoke-static {p0, v3, p1, v2}, Lcom/miui/gallery/cloud/CloudUtils;->getGroupItemByColumnnameAndValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/miui/gallery/data/DBCloud;

    move-result-object v0

    .line 90
    .local v0, "result":Lcom/miui/gallery/data/DBCloud;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBCloud;->getBabyInfoJson()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 101
    .end local v0    # "result":Lcom/miui/gallery/data/DBCloud;
    :cond_0
    :goto_0
    return v1

    .line 94
    :cond_1
    const-string v3, "serverId"

    .line 95
    invoke-static {p0, v3, p1}, Lcom/miui/gallery/cloud/CloudUtils;->getGroupItemByColumnnameAndValueFromShare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/data/DBShareAlbum;

    move-result-object v0

    .line 97
    .local v0, "result":Lcom/miui/gallery/data/DBShareAlbum;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBShareAlbum;->getBabyInfoJson()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .end local v0    # "result":Lcom/miui/gallery/data/DBShareAlbum;
    :cond_2
    move v1, v2

    .line 101
    goto :goto_0
.end method

.method public static saveBabyInfo(Ljava/lang/String;Lcom/miui/gallery/cloud/baby/BabyInfo;Z)V
    .locals 0
    .param p0, "albumLocalId"    # Ljava/lang/String;
    .param p1, "babyInfo"    # Lcom/miui/gallery/cloud/baby/BabyInfo;
    .param p2, "isShareAlbum"    # Z

    .prologue
    .line 41
    if-eqz p2, :cond_0

    .line 42
    invoke-static {p0, p1}, Lcom/miui/gallery/cloud/baby/BabyAlbumUtils;->saveShareAlbumBabyInfo(Ljava/lang/String;Lcom/miui/gallery/cloud/baby/BabyInfo;)V

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-static {p0, p1}, Lcom/miui/gallery/cloud/baby/BabyAlbumUtils;->saveOwnerAlbumBabyInfo(Ljava/lang/String;Lcom/miui/gallery/cloud/baby/BabyInfo;)V

    goto :goto_0
.end method

.method private static saveBabyInfoJson(Ljava/lang/String;Lcom/miui/gallery/cloud/baby/BabyInfo;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "albumLocalId"    # Ljava/lang/String;
    .param p1, "babyInfo"    # Lcom/miui/gallery/cloud/baby/BabyInfo;
    .param p2, "babyInfoJsonColumnName"    # Ljava/lang/String;
    .param p3, "babyInfoJsonColumnIndex"    # I
    .param p4, "peopleIdColumnName"    # Ljava/lang/String;
    .param p5, "editedColumnName"    # Ljava/lang/String;
    .param p6, "idColumnName"    # Ljava/lang/String;
    .param p7, "table"    # Ljava/lang/String;

    .prologue
    .line 69
    .line 70
    invoke-static {p3}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->transformToEditedColumnsElement(I)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "editColumnElement":Ljava/lang/String;
    const-string/jumbo v2, "update %s set %s=%s, %s=\'%s\', %s=coalesce(replace(%s, \'%s\', \'\') || \'%s\', \'%s\') where %s=%s"

    const/16 v1, 0xc

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p7, v3, v1

    const/4 v1, 0x1

    aput-object p2, v3, v1

    const/4 v4, 0x2

    if-nez p1, :cond_0

    const-string v1, ""

    .line 75
    :goto_0
    aput-object v1, v3, v4

    const/4 v1, 0x3

    aput-object p4, v3, v1

    const/4 v4, 0x4

    if-nez p1, :cond_1

    const-string v1, ""

    :goto_1
    aput-object v1, v3, v4

    const/4 v1, 0x5

    aput-object p5, v3, v1

    const/4 v1, 0x6

    aput-object p5, v3, v1

    const/4 v1, 0x7

    aput-object v0, v3, v1

    const/16 v1, 0x8

    aput-object v0, v3, v1

    const/16 v1, 0x9

    aput-object v0, v3, v1

    const/16 v1, 0xa

    aput-object p6, v3, v1

    const/16 v1, 0xb

    aput-object p0, v3, v1

    .line 71
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/util/GalleryUtils;->safeExec(Ljava/lang/String;)Z

    .line 83
    return-void

    .line 75
    :cond_0
    invoke-virtual {p1}, Lcom/miui/gallery/cloud/baby/BabyInfo;->toJSON()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/miui/gallery/cloud/baby/BabyInfo;->mPeopleId:Ljava/lang/String;

    goto :goto_1
.end method

.method public static saveOwnerAlbumBabyInfo(Ljava/lang/String;Lcom/miui/gallery/cloud/baby/BabyInfo;)V
    .locals 8
    .param p0, "albumLocalId"    # Ljava/lang/String;
    .param p1, "babyInfo"    # Lcom/miui/gallery/cloud/baby/BabyInfo;

    .prologue
    .line 50
    const-string v2, "babyInfoJson"

    const/16 v3, 0x3f

    const-string v4, "peopleId"

    const-string v5, "editedColumns"

    const-string v6, "_id"

    const-string v7, "cloud"

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/miui/gallery/cloud/baby/BabyAlbumUtils;->saveBabyInfoJson(Ljava/lang/String;Lcom/miui/gallery/cloud/baby/BabyInfo;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static saveShareAlbumBabyInfo(Ljava/lang/String;Lcom/miui/gallery/cloud/baby/BabyInfo;)V
    .locals 8
    .param p0, "albumLocalId"    # Ljava/lang/String;
    .param p1, "babyInfo"    # Lcom/miui/gallery/cloud/baby/BabyInfo;

    .prologue
    .line 58
    const-string v2, "babyInfoJson"

    const/16 v3, 0x19

    const-string v4, "peopleId"

    const-string v5, "editedColumns"

    const-string v6, "_id"

    const-string/jumbo v7, "shareAlbum"

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/miui/gallery/cloud/baby/BabyAlbumUtils;->saveBabyInfoJson(Ljava/lang/String;Lcom/miui/gallery/cloud/baby/BabyInfo;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method
