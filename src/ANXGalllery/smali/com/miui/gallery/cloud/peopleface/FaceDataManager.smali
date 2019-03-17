.class public Lcom/miui/gallery/cloud/peopleface/FaceDataManager;
.super Ljava/lang/Object;
.source "FaceDataManager.java"


# static fields
.field public static final BASE_URI:Landroid/net/Uri;

.field public static final FACE_TO_IMAGES_URI:Landroid/net/Uri;

.field public static final IS_VALID_GROUP:Ljava/lang/String;

.field public static final PEOPLE_FACE_DELAY_NOTIFY_URI:Landroid/net/Uri;

.field public static final PEOPLE_FACE_JOIN_FACE_TO_IMAGES_JOIN_CLOUD_URI:Landroid/net/Uri;

.field public static final PEOPLE_FACE_JOIN_FACE_TO_IMAGES_URI:Landroid/net/Uri;

.field public static final PEOPLE_FACE_URI:Landroid/net/Uri;

.field public static final PEOPLE_RECOMMOND_URI:Landroid/net/Uri;

.field private static final PROJECTION_BASIC_PEOPLE_INFO:[Ljava/lang/String;

.field private static final itemIsGroup:Ljava/lang/String;

.field public static final itemIsNotGroup:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 32
    const-string v0, "content://com.miui.gallery.cloud.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->BASE_URI:Landroid/net/Uri;

    .line 34
    sget-object v0, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "peopleFace"

    .line 35
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->PEOPLE_FACE_URI:Landroid/net/Uri;

    .line 36
    sget-object v0, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "faceToImages"

    .line 37
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->FACE_TO_IMAGES_URI:Landroid/net/Uri;

    .line 38
    sget-object v0, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "peopleFaceJoinFaceToImagesJoinCloud"

    .line 39
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->PEOPLE_FACE_JOIN_FACE_TO_IMAGES_JOIN_CLOUD_URI:Landroid/net/Uri;

    .line 40
    sget-object v0, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "peopleRecommend"

    .line 41
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->PEOPLE_RECOMMOND_URI:Landroid/net/Uri;

    .line 42
    sget-object v0, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "peopleFaceJoinFaceToImages"

    .line 43
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->PEOPLE_FACE_JOIN_FACE_TO_IMAGES_URI:Landroid/net/Uri;

    .line 44
    sget-object v0, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "peopleFace"

    .line 45
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "delay_notify"

    const-string/jumbo v2, "true"

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->PEOPLE_FACE_DELAY_NOTIFY_URI:Landroid/net/Uri;

    .line 501
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "(%s.%s = \"%s\")"

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "peopleFace"

    aput-object v3, v2, v5

    const-string/jumbo v3, "type"

    aput-object v3, v2, v7

    const-string v3, "FACE"

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->itemIsNotGroup:Ljava/lang/String;

    .line 505
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "(%s = \"%s\")"

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "type"

    aput-object v3, v2, v5

    const-string v3, "PEOPLE"

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->itemIsGroup:Ljava/lang/String;

    .line 513
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "(%s = \"%s\" AND (%s = %d OR %s = %d OR %s = %d OR (%s = %d AND %s = \"%s\")) AND ( %s is null OR %s = \'\' OR %s = %s) AND (%s IS NULL OR %s != %d))"

    const/16 v2, 0x13

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "type"

    aput-object v3, v2, v5

    const-string v3, "PEOPLE"

    aput-object v3, v2, v7

    const-string v3, "localFlag"

    aput-object v3, v2, v6

    const/16 v3, 0x8

    .line 518
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    const-string v3, "localFlag"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const/16 v4, 0xa

    .line 520
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "localFlag"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const/16 v4, 0xe

    .line 522
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "localFlag"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    .line 524
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "serverStatus"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "normal"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "groupId"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "groupId"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "groupId"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "serverId"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "visibilityType"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "visibilityType"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    .line 527
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 514
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->IS_VALID_GROUP:Ljava/lang/String;

    .line 606
    new-array v0, v9, [Ljava/lang/String;

    const-string v1, "serverId"

    aput-object v1, v0, v5

    const-string/jumbo v1, "type"

    aput-object v1, v0, v7

    const-string v1, "groupId"

    aput-object v1, v0, v6

    const-string v1, "eTag"

    aput-object v1, v0, v8

    sput-object v0, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->PROJECTION_BASIC_PEOPLE_INFO:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/cloud/peopleface/PeopleFace;Landroid/database/Cursor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cloud/peopleface/PeopleFace;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 31
    invoke-static {p0, p1}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->isFaceInGroup(Lcom/miui/gallery/cloud/peopleface/PeopleFace;Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/database/Cursor;)Z
    .locals 1
    .param p0, "x0"    # Landroid/database/Cursor;

    .prologue
    .line 31
    invoke-static {p0}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->isPeopleMerged(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method public static appendId(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 424
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 425
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 426
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 428
    :cond_0
    const-string v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 430
    :cond_1
    return-void
.end method

.method public static changeChildrenOfPeopleA2PeopleB(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "peopleAServerId"    # Ljava/lang/String;
    .param p1, "peopleBServerId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    .line 484
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 485
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "groupId"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const-string v1, "groupId = ?   and localFlag != ? "

    new-array v2, v4, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    .line 493
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 487
    invoke-static {v0, v1, v2}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->safeUpdateFace(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    .line 494
    return-void
.end method

.method public static fillInPeopleInfo(Ljava/util/LinkedList;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/miui/gallery/cloud/peopleface/PeopleFace;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/peopleface/PeopleFace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 346
    .local p0, "brotherPeoples":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/miui/gallery/cloud/peopleface/PeopleFace;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->fillInPeopleInfo(Ljava/util/LinkedList;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static fillInPeopleInfo(Ljava/util/LinkedList;I)Ljava/util/ArrayList;
    .locals 11
    .param p1, "invokeDeep"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/miui/gallery/cloud/peopleface/PeopleFace;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/peopleface/PeopleFace;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "brotherPeoples":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/miui/gallery/cloud/peopleface/PeopleFace;>;"
    const/4 v3, 0x0

    .line 351
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 352
    .local v9, "serverIds":Ljava/lang/StringBuffer;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 353
    .local v7, "localIds":Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 354
    invoke-virtual {p0, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    iget-object v0, v0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->groupId:Ljava/lang/String;

    invoke-static {v9, v0}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->appendId(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    iget-object v0, v0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->localGroupId:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->appendId(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 353
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 357
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 358
    .local v8, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/peopleface/PeopleFace;>;"
    const-string v0, "peopleFace"

    .line 359
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getProjectionAll()[Ljava/lang/String;

    move-result-object v1

    .line 360
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->getVisiblePeopleFaceSelection(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/miui/gallery/cloud/peopleface/FaceDataManager$1;

    invoke-direct {v5, p0, v8}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager$1;-><init>(Ljava/util/LinkedList;Ljava/util/ArrayList;)V

    move-object v4, v3

    .line 358
    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/util/GalleryUtils;->safeQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/GalleryUtils$QueryHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 399
    .local v10, "updated":Z
    if-eqz v10, :cond_1

    invoke-virtual {p0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x4

    if-ge p1, v0, :cond_1

    .line 400
    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->fillInPeopleInfo(Ljava/util/LinkedList;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 402
    :cond_1
    return-object v8
.end method

.method public static getFaceInFaceIds(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p0, "serverIds"    # Ljava/lang/String;
    .param p1, "localIds"    # Ljava/lang/String;

    .prologue
    .line 279
    const/4 v9, 0x0

    .line 281
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance()Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v0

    const-string v1, "peopleFace"

    .line 283
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getProjectionAll()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 284
    invoke-static {p0, p1, v3}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->getPeopleFaceSelection(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 281
    invoke-virtual/range {v0 .. v8}, Lcom/miui/gallery/provider/GalleryDBHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 290
    :goto_0
    return-object v9

    .line 287
    :catch_0
    move-exception v10

    .line 288
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getGroupByPeopleName(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/cloud/peopleface/PeopleFace;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "peopleName"    # Ljava/lang/String;

    .prologue
    .line 530
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, v0, v1}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->getGroupByPeopleName(Landroid/content/Context;Ljava/lang/String;J)Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    move-result-object v0

    return-object v0
.end method

.method public static getGroupByPeopleName(Landroid/content/Context;Ljava/lang/String;J)Lcom/miui/gallery/cloud/peopleface/PeopleFace;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "peopleName"    # Ljava/lang/String;
    .param p2, "exceptLocalId"    # J

    .prologue
    const/4 v7, 0x0

    .line 534
    if-nez p1, :cond_1

    move-object v0, v7

    .line 557
    :cond_0
    :goto_0
    return-object v0

    .line 535
    :cond_1
    const/4 v6, 0x0

    .line 538
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    .line 539
    invoke-static {v1}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->getPeopleFaceLimitUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 540
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getProjectionAll()[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%s = ? AND %s != ? AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->IS_VALID_GROUP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v8, "peopleName"

    aput-object v8, v4, v5

    const/4 v5, 0x1

    const-string v8, "_id"

    aput-object v8, v4, v5

    .line 541
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    .line 544
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    .line 538
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 546
    if-eqz v6, :cond_2

    .line 547
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 548
    new-instance v0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    invoke-direct {v0, v6}, Lcom/miui/gallery/cloud/peopleface/PeopleFace;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    if-eqz v6, :cond_0

    .line 554
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 553
    :cond_2
    if-eqz v6, :cond_3

    .line 554
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v7

    .line 557
    goto :goto_0

    .line 553
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 554
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static getGroupByServerId(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/cloud/peopleface/PeopleFace;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serverId"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 580
    const/4 v6, 0x0

    .line 583
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    .line 584
    invoke-static {v1}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->getPeopleFaceLimitUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 585
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getProjectionAll()[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "serverId = ? AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->IS_VALID_GROUP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    .line 583
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 592
    if-eqz v6, :cond_1

    .line 593
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 594
    new-instance v0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    invoke-direct {v0, v6}, Lcom/miui/gallery/cloud/peopleface/PeopleFace;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 599
    if-eqz v6, :cond_0

    .line 600
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 603
    :cond_0
    :goto_0
    return-object v0

    .line 599
    :cond_1
    if-eqz v6, :cond_2

    .line 600
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v7

    .line 603
    goto :goto_0

    .line 599
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 600
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getItem(Ljava/lang/String;)Lcom/miui/gallery/cloud/peopleface/PeopleFace;
    .locals 7
    .param p0, "serverId"    # Ljava/lang/String;

    .prologue
    .line 611
    const/4 v0, 0x0

    .line 612
    .local v0, "face":Lcom/miui/gallery/cloud/peopleface/PeopleFace;
    const/4 v6, 0x0

    .line 614
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->PROJECTION_BASIC_PEOPLE_INFO:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serverId = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->queryFaceTableToCursor([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 617
    if-eqz v6, :cond_0

    .line 618
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 619
    new-instance v0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    .end local v0    # "face":Lcom/miui/gallery/cloud/peopleface/PeopleFace;
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 620
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    .line 621
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/cloud/peopleface/PeopleFace;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    .restart local v0    # "face":Lcom/miui/gallery/cloud/peopleface/PeopleFace;
    :cond_0
    if-eqz v6, :cond_1

    .line 627
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 630
    :cond_1
    return-object v0

    .line 626
    .end local v0    # "face":Lcom/miui/gallery/cloud/peopleface/PeopleFace;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 627
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method public static getPeopleFaceLimitUri(I)Landroid/net/Uri;
    .locals 1
    .param p0, "limit"    # I

    .prologue
    .line 498
    sget-object v0, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->PEOPLE_FACE_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/miui/gallery/util/UriUtil;->appendLimit(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getPeopleFaceSelection(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p0, "serverIds"    # Ljava/lang/String;
    .param p1, "localIds"    # Ljava/lang/String;
    .param p2, "queryPeople"    # Z

    .prologue
    .line 309
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 310
    .local v0, "bf":Ljava/lang/StringBuffer;
    const-string v1, "localFlag"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 311
    const-string v1, "!="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 312
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 313
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 314
    const-string v1, "serverStatus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 315
    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    const-string v1, "normal"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 317
    const-string v1, "\' AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 318
    const-string v1, "serverId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    const-string v1, " IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 320
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 321
    const-string v1, ") OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 322
    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    const-string v1, " IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 324
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    const-string v1, " )) AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 326
    if-eqz p2, :cond_0

    sget-object v1, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->itemIsGroup:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 327
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 326
    :cond_0
    sget-object v1, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->itemIsNotGroup:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getVisiblePeopleFaceSelection(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p0, "serverIds"    # Ljava/lang/String;
    .param p1, "localIds"    # Ljava/lang/String;
    .param p2, "queryPeople"    # Z

    .prologue
    .line 332
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 333
    .local v0, "bf":Ljava/lang/StringBuffer;
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->getPeopleFaceSelection(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 334
    const-string v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 335
    const-string/jumbo v1, "visibilityType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 336
    const-string v1, " IS NULL OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 337
    const-string/jumbo v1, "visibilityType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 338
    const-string v1, "!="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 339
    const/4 v1, 0x2

    .line 340
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 339
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 341
    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 342
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static ifHaveBabyType(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    .line 561
    const/4 v6, 0x0

    .line 563
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    .line 564
    invoke-static {v1}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->getPeopleFaceLimitUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getProjectionAll()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "not(peopleType is null ) "

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 563
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 567
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_2

    .line 573
    if-eqz v6, :cond_0

    .line 574
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v7

    :cond_1
    :goto_0
    return v0

    .line 570
    :cond_2
    const/4 v0, 0x0

    .line 573
    if-eqz v6, :cond_1

    .line 574
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 573
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 574
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static insertOneGroupWithName2DB(Ljava/lang/String;Ljava/lang/String;)J
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "contactJson"    # Ljava/lang/String;

    .prologue
    .line 660
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 661
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "localFlag"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 662
    const-string v1, "peopleName"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 664
    const-string v1, "peopleContactJsonInfo"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    :cond_0
    const-string/jumbo v1, "type"

    const-string v2, "PEOPLE"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    const-string/jumbo v1, "visibilityType"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 669
    invoke-static {v0}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->safeInsertFace(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2
.end method

.method private static isFaceInGroup(Lcom/miui/gallery/cloud/peopleface/PeopleFace;Landroid/database/Cursor;)Z
    .locals 4
    .param p0, "face"    # Lcom/miui/gallery/cloud/peopleface/PeopleFace;
    .param p1, "people"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 415
    iget-object v2, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->groupId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->groupId:Ljava/lang/String;

    .line 417
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 416
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->localGroupId:Ljava/lang/String;

    .line 418
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->localGroupId:Ljava/lang/String;

    .line 420
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 419
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0
.end method

.method private static isPeopleMerged(Landroid/database/Cursor;)Z
    .locals 7
    .param p0, "people"    # Landroid/database/Cursor;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 406
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 407
    .local v2, "localId":Ljava/lang/String;
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 408
    .local v3, "serverId":Ljava/lang/String;
    const/4 v6, 0x4

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 409
    .local v1, "localGroupId":Ljava/lang/String;
    const/4 v6, 0x3

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "groupId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 411
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    move v4, v5

    :cond_2
    return v4
.end method

.method public static moveChildrenToAnotherGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "srcIds"    # Ljava/lang/String;
    .param p1, "srcServerIds"    # Ljava/lang/String;
    .param p2, "dstId"    # Ljava/lang/String;
    .param p3, "dstServerId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    .line 469
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 470
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "groupId"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const-string v1, "localGroupId"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, " ( %s in (%s) or %s in (%s) ) and %s != %d"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "groupId"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const-string v4, "localGroupId"

    aput-object v4, v3, v6

    const/4 v4, 0x3

    aput-object p0, v3, v4

    const/4 v4, 0x4

    const-string v5, "localFlag"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 478
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 475
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 473
    invoke-static {v0, v1, v2}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->safeUpdateFace(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    .line 480
    return-void
.end method

.method public static queryFaceTableToCursor([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .param p0, "projection"    # [Ljava/lang/String;
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .param p3, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 68
    const/4 v9, 0x0

    .line 70
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance()Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v0

    const-string v1, "peopleFace"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v8}, Lcom/miui/gallery/provider/GalleryDBHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    move-object v0, v9

    .line 77
    :goto_0
    return-object v0

    .line 74
    :catch_0
    move-exception v10

    .line 75
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v11

    .line 77
    goto :goto_0
.end method

.method public static queryPeopleRecommondTableToCursor([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .param p0, "projection"    # [Ljava/lang/String;
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .param p3, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 111
    const/4 v9, 0x0

    .line 113
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance()Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v0

    const-string v1, "peopleRecommend"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v8}, Lcom/miui/gallery/provider/GalleryDBHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    move-object v0, v9

    .line 120
    :goto_0
    return-object v0

    .line 117
    :catch_0
    move-exception v10

    .line 118
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v11

    .line 120
    goto :goto_0
.end method

.method public static safeIgnorePeopleByIds(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p0, "batchIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v9, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->PEOPLE_FACE_URI:Landroid/net/Uri;

    monitor-enter v9

    .line 246
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .local v5, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 249
    .local v7, "values":Landroid/content/ContentValues;
    const-string/jumbo v8, "visibilityType"

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 250
    const-string v8, "%s in ( %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "_id"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, ","

    invoke-static {p0, v12}, Lcom/miui/gallery/util/GalleryUtils;->concatAll(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 251
    .local v3, "idSelection":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ") AND "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "localFlag"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v10, 0x8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "createFlagSelection":Ljava/lang/String;
    sget-object v8, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->PEOPLE_FACE_URI:Landroid/net/Uri;

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 254
    invoke-virtual {v8, v7}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const/4 v10, 0x0

    .line 255
    invoke-virtual {v8, v0, v10}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 256
    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    .line 257
    .local v1, "createPeopleOp":Landroid/content/ContentProviderOperation;
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    const-string v8, "localFlag"

    const/16 v10, 0xd

    .line 260
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 259
    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 261
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ") AND "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "localFlag"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " != "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v10, 0x8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 263
    .local v4, "notCreateFlagSelection":Ljava/lang/String;
    sget-object v8, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->PEOPLE_FACE_URI:Landroid/net/Uri;

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 264
    invoke-virtual {v8, v7}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const/4 v10, 0x0

    .line 265
    invoke-virtual {v8, v4, v10}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 266
    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    .line 267
    .local v6, "otherPeopleOp":Landroid/content/ContentProviderOperation;
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    :try_start_1
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "com.miui.gallery.cloud.provider"

    invoke-virtual {v8, v10, v5}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    :goto_0
    :try_start_2
    monitor-exit v9

    .line 276
    return-void

    .line 270
    :catch_0
    move-exception v2

    .line 271
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 275
    .end local v0    # "createFlagSelection":Ljava/lang/String;
    .end local v1    # "createPeopleOp":Landroid/content/ContentProviderOperation;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "idSelection":Ljava/lang/String;
    .end local v4    # "notCreateFlagSelection":Ljava/lang/String;
    .end local v5    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v6    # "otherPeopleOp":Landroid/content/ContentProviderOperation;
    .end local v7    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 272
    .restart local v0    # "createFlagSelection":Ljava/lang/String;
    .restart local v1    # "createPeopleOp":Landroid/content/ContentProviderOperation;
    .restart local v3    # "idSelection":Ljava/lang/String;
    .restart local v4    # "notCreateFlagSelection":Ljava/lang/String;
    .restart local v5    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v6    # "otherPeopleOp":Landroid/content/ContentProviderOperation;
    .restart local v7    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v2

    .line 273
    .local v2, "e":Landroid/content/OperationApplicationException;
    :try_start_3
    invoke-virtual {v2}, Landroid/content/OperationApplicationException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static safeInsertFace(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p0, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->safeInsertFace(Landroid/content/ContentValues;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static safeInsertFace(Landroid/content/ContentValues;Z)Landroid/net/Uri;
    .locals 2
    .param p0, "values"    # Landroid/content/ContentValues;
    .param p1, "delayNotify"    # Z

    .prologue
    .line 160
    if-eqz p1, :cond_0

    :try_start_0
    sget-object v1, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->PEOPLE_FACE_DELAY_NOTIFY_URI:Landroid/net/Uri;

    :goto_0
    invoke-static {v1, p0}, Lcom/miui/gallery/util/GalleryUtils;->safeInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 163
    :goto_1
    return-object v1

    .line 160
    :cond_0
    sget-object v1, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->PEOPLE_FACE_URI:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 163
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static safeInsertFace2Image(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .param p0, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 216
    :try_start_0
    sget-object v1, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->FACE_TO_IMAGES_URI:Landroid/net/Uri;

    invoke-static {v1, p0}, Lcom/miui/gallery/util/GalleryUtils;->safeInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 219
    :goto_0
    return-object v1

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 219
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static safeInsertPeopleRecommend(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .param p0, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 169
    :try_start_0
    sget-object v1, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->PEOPLE_RECOMMOND_URI:Landroid/net/Uri;

    invoke-static {v1, p0}, Lcom/miui/gallery/util/GalleryUtils;->safeInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 172
    :goto_0
    return-object v1

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 172
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static safeQueryFace2ImageByServerId(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .param p0, "serverId"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 224
    const/4 v9, 0x0

    .line 226
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance()Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v0

    const-string v1, "faceToImages"

    .line 227
    invoke-static {}, Lcom/miui/gallery/cloud/CloudUtils;->getProjectionAll()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "imageServerId = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 226
    invoke-virtual/range {v0 .. v8}, Lcom/miui/gallery/provider/GalleryDBHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    move-object v0, v9

    .line 234
    :goto_0
    return-object v0

    .line 231
    :catch_0
    move-exception v10

    .line 232
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v11

    .line 234
    goto :goto_0
.end method

.method public static safeQueryPeopleRecommend([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p0, "projection"    # [Ljava/lang/String;
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 179
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance()Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v0

    const-string v1, "peopleRecommend"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v8}, Lcom/miui/gallery/provider/GalleryDBHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 185
    :goto_0
    return-object v9

    .line 183
    :catch_0
    move-exception v10

    .line 184
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static safeUpdateFace(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 2
    .param p0, "values"    # Landroid/content/ContentValues;
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->safeUpdateFace(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static safeUpdateFace(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)J
    .locals 4
    .param p0, "values"    # Landroid/content/ContentValues;
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .param p3, "delayNotify"    # Z

    .prologue
    .line 206
    if-eqz p3, :cond_0

    :try_start_0
    sget-object v1, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->PEOPLE_FACE_DELAY_NOTIFY_URI:Landroid/net/Uri;

    :goto_0
    invoke-static {v1, p0, p1, p2}, Lcom/miui/gallery/util/GalleryUtils;->safeUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    .line 210
    :goto_1
    return-wide v2

    .line 206
    :cond_0
    sget-object v1, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->PEOPLE_FACE_URI:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 210
    const-wide/16 v2, -0x1

    goto :goto_1
.end method

.method public static safeUpdatePeopleRecommend(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 4
    .param p0, "values"    # Landroid/content/ContentValues;
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 192
    :try_start_0
    sget-object v1, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->PEOPLE_RECOMMOND_URI:Landroid/net/Uri;

    invoke-static {v1, p0, p1, p2}, Lcom/miui/gallery/util/GalleryUtils;->safeUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    int-to-long v2, v1

    .line 195
    :goto_0
    return-wide v2

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 195
    const-wide/16 v2, -0x1

    goto :goto_0
.end method
