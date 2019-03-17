.class public Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
.super Ljava/lang/Object;
.source "NormalPeopleFaceMediaSet.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mId:J

.field private mName:Ljava/lang/String;

.field protected mServerId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 693
    new-instance v0, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet$5;

    invoke-direct {v0}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet$5;-><init>()V

    sput-object v0, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "serverId"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-wide p1, p0, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->mId:J

    .line 58
    iput-object p3, p0, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->mServerId:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->mName:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->mId:J

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->mServerId:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->mName:Ljava/lang/String;

    .line 66
    return-void
.end method

.method private static closeCursor(Landroid/database/Cursor;)V
    .locals 0
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 678
    invoke-static {p0}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 679
    return-void
.end method

.method private deleteLocalGroups(Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 317
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 318
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "localFlag"

    const/4 v2, 0x2

    .line 319
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 318
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 320
    const-string v1, "_id = ? "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->safeUpdateFace(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    .line 322
    return-void
.end method

.method public static doMoveFacesToAnother(Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceFolderItem;[J)V
    .locals 6
    .param p0, "toFolderItem"    # Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceFolderItem;
    .param p1, "paths"    # [J

    .prologue
    .line 417
    instance-of v1, p0, Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceNewFolerItem;

    if-eqz v1, :cond_0

    .line 418
    invoke-static {p0}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->initialFaceNewFolerItem(Ljava/lang/Object;)V

    .line 421
    :cond_0
    if-nez p0, :cond_2

    .line 422
    invoke-static {p1}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->ignoreFaces([J)V

    .line 435
    :cond_1
    :goto_0
    return-void

    .line 424
    :cond_2
    invoke-interface {p0}, Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceFolderItem;->getId()Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, "idString":Ljava/lang/String;
    const-wide/16 v2, -0x1

    .line 427
    .local v2, "peopleLocalId":J
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 430
    :goto_1
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 433
    invoke-static {p1, v2, v3}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->move2AnohterAlbum([JJ)V

    goto :goto_0

    .line 428
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private static doMoveToRelation([JLjava/lang/String;Ljava/lang/String;)Z
    .locals 19
    .param p0, "selectIds"    # [J
    .param p1, "relation"    # Ljava/lang/String;
    .param p2, "relationText"    # Ljava/lang/String;

    .prologue
    .line 581
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 582
    .local v8, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-object/from16 v0, p0

    array-length v13, v0

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v13, :cond_4

    aget-wide v6, p0, v12

    .line 584
    .local v6, "id":J
    invoke-static {v6, v7}, Lcom/miui/gallery/provider/FaceManager;->queryContactInfoOfOnePerson(J)Lcom/miui/gallery/model/PeopleContactInfo;

    move-result-object v3

    .line 585
    .local v3, "contactTemp":Lcom/miui/gallery/model/PeopleContactInfo;
    if-nez v3, :cond_3

    .line 586
    new-instance v3, Lcom/miui/gallery/model/PeopleContactInfo;

    .end local v3    # "contactTemp":Lcom/miui/gallery/model/PeopleContactInfo;
    invoke-direct {v3}, Lcom/miui/gallery/model/PeopleContactInfo;-><init>()V

    .line 595
    .restart local v3    # "contactTemp":Lcom/miui/gallery/model/PeopleContactInfo;
    :cond_0
    :goto_1
    move-object/from16 v0, p1

    iput-object v0, v3, Lcom/miui/gallery/model/PeopleContactInfo;->relationWithMe:Ljava/lang/String;

    .line 596
    move-object/from16 v0, p2

    iput-object v0, v3, Lcom/miui/gallery/model/PeopleContactInfo;->relationWithMeText:Ljava/lang/String;

    .line 597
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 599
    .local v11, "values":Landroid/content/ContentValues;
    invoke-virtual {v3}, Lcom/miui/gallery/model/PeopleContactInfo;->formatContactJson()Ljava/lang/String;

    move-result-object v2

    .line 600
    .local v2, "contactJson":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 601
    const-string v14, "peopleContactJsonInfo"

    invoke-virtual {v11, v14, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    :cond_1
    iget-object v14, v3, Lcom/miui/gallery/model/PeopleContactInfo;->relationWithMe:Ljava/lang/String;

    .line 607
    invoke-static {v14}, Lcom/miui/gallery/model/PeopleContactInfo;->getRelationType(Ljava/lang/String;)I

    move-result v10

    .line 608
    .local v10, "relationType":I
    invoke-static {v10}, Lcom/miui/gallery/model/PeopleContactInfo;->isUserDefineRelation(I)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 609
    const-string v14, "relationText"

    move-object/from16 v0, p2

    invoke-virtual {v11, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    :cond_2
    const-string v14, "relationType"

    .line 613
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 611
    invoke-virtual {v11, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 614
    const-string v14, "localFlag"

    const/16 v15, 0xa

    .line 615
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 614
    invoke-virtual {v11, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 616
    sget-object v14, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->PEOPLE_FACE_URI:Landroid/net/Uri;

    .line 617
    invoke-static {v14}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    .line 618
    invoke-virtual {v14, v11}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    const-string v15, "_id = ? "

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 619
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    .line 620
    invoke-virtual {v14}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    .line 621
    .local v5, "op":Landroid/content/ContentProviderOperation;
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 587
    .end local v2    # "contactJson":Ljava/lang/String;
    .end local v5    # "op":Landroid/content/ContentProviderOperation;
    .end local v10    # "relationType":I
    .end local v11    # "values":Landroid/content/ContentValues;
    :cond_3
    sget-object v14, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->myself:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    invoke-static {v14}, Lcom/miui/gallery/model/PeopleContactInfo;->getRelationValue(Lcom/miui/gallery/model/PeopleContactInfo$Relation;)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v3, Lcom/miui/gallery/model/PeopleContactInfo;->relationWithMe:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 588
    new-instance v9, Ljava/util/HashMap;

    const/4 v14, 0x1

    invoke-direct {v9, v14}, Ljava/util/HashMap;-><init>(I)V

    .line 589
    .local v9, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v14, "MoveToRelation"

    move-object/from16 v0, p1

    invoke-interface {v9, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    const-string v14, "MoveToRelationText"

    move-object/from16 v0, p2

    invoke-interface {v9, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    const-string v14, "people_mark"

    const-string v15, "move_people_from_myself"

    invoke-static {v14, v15, v9}, Lcom/miui/gallery/util/GalleryStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 623
    .end local v3    # "contactTemp":Lcom/miui/gallery/model/PeopleContactInfo;
    .end local v6    # "id":J
    .end local v9    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_5

    .line 625
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "com.miui.gallery.cloud.provider"

    invoke-virtual {v12, v13, v8}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 633
    :cond_5
    :goto_2
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 634
    .restart local v9    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v12, "relation"

    move-object/from16 v0, p1

    invoke-interface {v9, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    const-string v12, "people"

    const-string v13, "people_set_relation"

    invoke-static {v12, v13, v9}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 637
    const/4 v12, 0x1

    return v12

    .line 626
    .end local v9    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    .line 627
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 628
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 629
    .local v4, "e":Landroid/content/OperationApplicationException;
    invoke-virtual {v4}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_2
.end method

.method private static formatSelectionIn([J)Ljava/lang/String;
    .locals 6
    .param p0, "ids"    # [J

    .prologue
    .line 499
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 500
    .local v2, "sb":Ljava/lang/StringBuffer;
    array-length v1, p0

    .line 501
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 502
    aget-wide v4, p0, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 503
    add-int/lit8 v3, v1, -0x1

    if-ge v0, v3, :cond_0

    .line 504
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 501
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 507
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getBrothers(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "photoServerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/peopleface/PeopleFace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 642
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 643
    .local v4, "startGetBrothers":J
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 646
    .local v2, "sb":Ljava/lang/StringBuffer;
    invoke-static {p0}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->safeQueryFace2ImageByServerId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 647
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 648
    :cond_0
    invoke-static {v1}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->closeCursor(Landroid/database/Cursor;)V

    .line 649
    const/4 v0, 0x0

    .line 674
    :goto_0
    return-object v0

    .line 651
    :cond_1
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 652
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->appendId(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_1

    .line 654
    :cond_2
    invoke-static {v1}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->closeCursor(Landroid/database/Cursor;)V

    .line 656
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 658
    .local v0, "brotherPeoples":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/peopleface/PeopleFace;>;"
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, ""

    invoke-static {v3, v6}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->getFaceInFaceIds(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 659
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_4

    .line 660
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "brotherPeoples":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/peopleface/PeopleFace;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 661
    .restart local v0    # "brotherPeoples":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/peopleface/PeopleFace;>;"
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 662
    new-instance v3, Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    invoke-direct {v3, v1}, Lcom/miui/gallery/cloud/peopleface/PeopleFace;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 664
    :cond_3
    invoke-static {v1}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->closeCursor(Landroid/database/Cursor;)V

    .line 667
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->fillInPeopleInfo(Ljava/util/LinkedList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 671
    :goto_3
    const-string v3, "PeopleFaceMediaSet"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get brothers cost:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 673
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 671
    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 669
    :cond_4
    invoke-static {v1}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_3
.end method

.method public static ignoreFaces([J)V
    .locals 7
    .param p0, "ids"    # [J

    .prologue
    const/4 v4, 0x2

    .line 476
    invoke-static {p0}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->formatSelectionIn([J)Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, "faceIds":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 478
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 479
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "localFlag"

    .line 480
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 479
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 481
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s IN (%s)"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->safeUpdateFace(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    .line 484
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private static initialFaceNewFolerItem(Ljava/lang/Object;)V
    .locals 10
    .param p0, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x1

    .line 438
    move-object v0, p0

    check-cast v0, Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceNewFolerItem;

    .line 439
    .local v0, "folderItem":Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceNewFolerItem;
    invoke-virtual {v0}, Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceNewFolerItem;->isCreatedInDb()Z

    move-result v7

    if-nez v7, :cond_0

    .line 441
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v7

    .line 442
    invoke-virtual {v0}, Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceNewFolerItem;->getName()Ljava/lang/String;

    move-result-object v8

    .line 440
    invoke-static {v7, v8}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->getGroupByPeopleName(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    move-result-object v1

    .line 443
    .local v1, "newface":Lcom/miui/gallery/cloud/peopleface/PeopleFace;
    if-eqz v1, :cond_1

    .line 444
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 445
    .local v6, "values":Landroid/content/ContentValues;
    const-string v4, "_id = ? "

    .line 446
    .local v4, "selection":Ljava/lang/String;
    new-array v5, v9, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, v1, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->_id:Ljava/lang/String;

    aput-object v8, v5, v7

    .line 447
    .local v5, "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v7, "visibilityType"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 448
    invoke-static {v6, v4, v5}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->safeUpdateFace(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    .line 449
    iget-object v7, v1, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->_id:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceNewFolerItem;->setId(Ljava/lang/String;)V

    .line 455
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v6    # "values":Landroid/content/ContentValues;
    :goto_0
    invoke-virtual {v0}, Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceNewFolerItem;->setCreatedInDb()V

    .line 457
    .end local v1    # "newface":Lcom/miui/gallery/cloud/peopleface/PeopleFace;
    :cond_0
    return-void

    .line 452
    .restart local v1    # "newface":Lcom/miui/gallery/cloud/peopleface/PeopleFace;
    :cond_1
    invoke-virtual {v0}, Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceNewFolerItem;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceNewFolerItem;->getContactjson()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->insertOneGroupWithName2DB(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    .line 453
    .local v2, "id":J
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceNewFolerItem;->setId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static merge(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "newName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "faceSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    sget-object v8, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->PEOPLE_FACE_URI:Landroid/net/Uri;

    monitor-enter v8

    .line 117
    const/4 v5, 0x0

    .line 118
    .local v5, "targetFaceSet":Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_3

    .line 119
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    invoke-virtual {v7}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 120
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    move-object v5, v0

    .line 121
    const/4 v7, 0x0

    invoke-virtual {v5, p0, p2, v7}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->rename(Landroid/content/Context;Ljava/lang/String;Lcom/miui/gallery/model/PeopleContactInfo;)Z

    .line 152
    :cond_2
    :goto_1
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v7

    :goto_2
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 125
    :cond_3
    :try_start_1
    invoke-static {p0, p2}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->getGroupByPeopleName(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    move-result-object v3

    .line 127
    .local v3, "newFace":Lcom/miui/gallery/cloud/peopleface/PeopleFace;
    if-eqz v3, :cond_4

    iget-object v7, v3, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->serverId:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 128
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    .line 129
    .local v2, "faceSet":Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    invoke-virtual {v2}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->getServerId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 130
    move-object v5, v2

    .line 132
    const/4 v7, 0x0

    invoke-virtual {v5, p0, p2, v7}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->rename(Landroid/content/Context;Ljava/lang/String;Lcom/miui/gallery/model/PeopleContactInfo;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v5

    .line 138
    .end local v2    # "faceSet":Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    .end local v5    # "targetFaceSet":Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    .local v6, "targetFaceSet":Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    :goto_3
    if-nez v6, :cond_7

    .line 139
    const/4 v4, 0x0

    .line 140
    .local v4, "originalTargetFaceSet":Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    if-eqz v3, :cond_6

    .line 141
    :try_start_2
    new-instance v5, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;

    iget-object v7, v3, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->_id:Ljava/lang/String;

    .line 142
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iget-object v7, v3, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->serverId:Ljava/lang/String;

    invoke-direct {v5, v10, v11, v7, p2}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;-><init>(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 149
    .end local v4    # "originalTargetFaceSet":Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    .end local v6    # "targetFaceSet":Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    .restart local v5    # "targetFaceSet":Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    :goto_4
    :try_start_3
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 150
    invoke-direct {v5, p1}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->mergeToThis(Ljava/util/ArrayList;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 144
    .end local v5    # "targetFaceSet":Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    .restart local v4    # "originalTargetFaceSet":Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    .restart local v6    # "targetFaceSet":Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    :cond_6
    const/4 v7, 0x0

    :try_start_4
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 145
    .end local v6    # "targetFaceSet":Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    .restart local v5    # "targetFaceSet":Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    const/4 v7, 0x0

    :try_start_5
    invoke-virtual {v5, p0, p2, v7}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->rename(Landroid/content/Context;Ljava/lang/String;Lcom/miui/gallery/model/PeopleContactInfo;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 152
    .end local v5    # "targetFaceSet":Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    .restart local v6    # "targetFaceSet":Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "targetFaceSet":Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    .restart local v5    # "targetFaceSet":Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    goto :goto_2

    .end local v4    # "originalTargetFaceSet":Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    .end local v5    # "targetFaceSet":Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    .restart local v6    # "targetFaceSet":Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    :cond_7
    move-object v5, v6

    .end local v6    # "targetFaceSet":Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    .restart local v5    # "targetFaceSet":Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    goto :goto_4

    :cond_8
    move-object v6, v5

    .end local v5    # "targetFaceSet":Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    .restart local v6    # "targetFaceSet":Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;
    goto :goto_3
.end method

.method private mergeGroupA2GroupB(Lcom/miui/gallery/cloud/peopleface/PeopleFace;Lcom/miui/gallery/cloud/peopleface/PeopleFace;)J
    .locals 4
    .param p1, "peopleA"    # Lcom/miui/gallery/cloud/peopleface/PeopleFace;
    .param p2, "peopleB"    # Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    .prologue
    .line 340
    iget-object v1, p1, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->_id:Ljava/lang/String;

    iget-object v0, p1, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->serverId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    iget-object v2, p2, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->_id:Ljava/lang/String;

    iget-object v3, p2, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->serverId:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->mergeGroups(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->serverId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private mergeGroups(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 11
    .param p1, "srcIds"    # Ljava/lang/String;
    .param p2, "srcServerIds"    # Ljava/lang/String;
    .param p3, "dstId"    # Ljava/lang/String;
    .param p4, "dstServerId"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    .line 345
    const-wide/16 v0, -0x1

    .line 346
    .local v0, "rowsAffected":J
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 347
    .local v2, "values":Landroid/content/ContentValues;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 348
    const-string v3, "localFlag"

    .line 349
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 348
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 350
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s in (%s)"

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "_id"

    aput-object v6, v5, v7

    aput-object p1, v5, v9

    .line 351
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 350
    invoke-static {v2, v3, v10}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->safeUpdateFace(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 368
    :goto_0
    invoke-static {p1, p2, p3, p4}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->moveChildrenToAnotherGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    return-wide v0

    .line 355
    :cond_0
    const-string v3, "localFlag"

    const/16 v4, 0xc

    .line 356
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 355
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 357
    const-string v3, "localGroupId"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v3, "groupId"

    invoke-virtual {v2, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s in (%s) and %s != %s and %s != %d"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "_id"

    aput-object v6, v5, v7

    aput-object p1, v5, v9

    const-string v6, "_id"

    aput-object v6, v5, v8

    const/4 v6, 0x3

    aput-object p3, v5, v6

    const/4 v6, 0x4

    const-string v7, "localFlag"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    .line 365
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 362
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 360
    invoke-static {v2, v3, v10}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->safeUpdateFace(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method private mergeToThis(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, "faceSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;>;"
    const-string v7, ","

    new-instance v8, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet$2;

    invoke-direct {v8, p0}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet$2;-><init>(Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;)V

    invoke-static {p1, v7, v8}, Lcom/miui/gallery/util/GalleryUtils;->concatAll(Ljava/util/Collection;Ljava/lang/String;Lcom/miui/gallery/util/GalleryUtils$ConcatConverter;)Ljava/lang/String;

    move-result-object v5

    .line 165
    .local v5, "srcIdsSynced":Ljava/lang/String;
    const-string v7, ","

    new-instance v8, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet$3;

    invoke-direct {v8, p0}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet$3;-><init>(Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;)V

    invoke-static {p1, v7, v8}, Lcom/miui/gallery/util/GalleryUtils;->concatAll(Ljava/util/Collection;Ljava/lang/String;Lcom/miui/gallery/util/GalleryUtils$ConcatConverter;)Ljava/lang/String;

    move-result-object v4

    .line 173
    .local v4, "srcIdsNotSynced":Ljava/lang/String;
    const-string v7, ","

    new-instance v8, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet$4;

    invoke-direct {v8, p0}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet$4;-><init>(Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;)V

    invoke-static {p1, v7, v8}, Lcom/miui/gallery/util/GalleryUtils;->concatAll(Ljava/util/Collection;Ljava/lang/String;Lcom/miui/gallery/util/GalleryUtils$ConcatConverter;)Ljava/lang/String;

    move-result-object v6

    .line 182
    .local v6, "srcServerIds":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->getBucketId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->getServerId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->mergeGroups(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    .line 183
    .local v2, "rowsAffectedSynced":J
    const-string v7, ""

    invoke-virtual {p0}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->getBucketId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->getServerId()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v4, v7, v8, v9}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->mergeGroups(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 184
    .local v0, "rowsAffectedNotSynced":J
    const-string v7, "PeopleFaceMediaSet"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "merge result: rowsAffectedSynced="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", rowsAffectedNotSynced="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void
.end method

.method public static move2AnohterAlbum([JJ)V
    .locals 7
    .param p0, "ids"    # [J
    .param p1, "peopleLocalId"    # J

    .prologue
    .line 460
    invoke-static {p0}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->formatSelectionIn([J)Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, "faceIds":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 462
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 463
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "localFlag"

    const/4 v3, 0x5

    .line 464
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 463
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 465
    const-string v2, "groupId"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string v2, "localGroupId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 467
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s IN (%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->safeUpdateFace(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    .line 470
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private moveFaceFromLocalA2B(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "idA"    # Ljava/lang/String;
    .param p2, "idB"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    .line 325
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 326
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "localFlag"

    const/4 v2, 0x5

    .line 327
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 326
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 328
    const-string v1, "localGroupId"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v1, "localGroupId = ? and localFlag != ? "

    new-array v2, v4, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    .line 336
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 330
    invoke-static {v0, v1, v2}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->safeUpdateFace(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    .line 337
    return-void
.end method

.method public static moveFaceToMyselfGroup(Landroid/content/Context;J)Z
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "peopleId"    # J

    .prologue
    .line 516
    sget-object v0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->myself:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    invoke-virtual {v0}, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->getRelationType()I

    move-result v0

    invoke-static {p0, v0}, Lcom/miui/gallery/provider/FaceManager;->queryPeopleIdOfRelation(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v12

    .line 517
    .local v12, "peopleInMyself":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v12, :cond_4

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 518
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 527
    :goto_0
    if-eqz v12, :cond_0

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 528
    sget-object v0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->unknown:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    invoke-static {v0}, Lcom/miui/gallery/model/PeopleContactInfo;->getRelationValue(Lcom/miui/gallery/model/PeopleContactInfo$Relation;)Ljava/lang/String;

    move-result-object v14

    .line 529
    .local v14, "unknownRelationValue":Ljava/lang/String;
    invoke-static {v12}, Lcom/miui/gallery/util/MiscUtil;->listToArray(Ljava/util/List;)[J

    move-result-object v0

    invoke-static {v0, v14, v14}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->doMoveToRelation([JLjava/lang/String;Ljava/lang/String;)Z

    .line 535
    .end local v14    # "unknownRelationValue":Ljava/lang/String;
    :cond_0
    const/4 v13, 0x0

    .line 536
    .local v13, "peopleName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 537
    .local v9, "haveOtherPeopleNameOfMe":Z
    :try_start_0
    invoke-static {p0}, Lcom/miui/gallery/model/PeopleContactInfo;->getDefaultNameForMyself(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 538
    .local v7, "defaultNameForMyself":Ljava/lang/String;
    const/4 v6, 0x0

    .line 540
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->PERSONS_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/gallery/util/face/PeopleCursorHelper;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 542
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 544
    :cond_1
    invoke-static {v6}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getPeopleLocalId(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_5

    .line 545
    invoke-static {v6}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getPeopleName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v13

    .line 549
    :cond_2
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 554
    :cond_3
    :try_start_2
    invoke-static {v6}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 556
    :goto_2
    new-instance v11, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {v11, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 557
    .local v11, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "PeopleOriginName"

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "NoName"

    :goto_3
    invoke-interface {v11, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    const-string v0, "MarkOtherPeopleWhenExistMe"

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    const-string v0, "people_mark"

    const-string v1, "mark_people_to_myself"

    invoke-static {v0, v1, v11}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 564
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "defaultNameForMyself":Ljava/lang/String;
    .end local v11    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_4
    const/4 v0, 0x1

    return v0

    .line 521
    .end local v9    # "haveOtherPeopleNameOfMe":Z
    .end local v13    # "peopleName":Ljava/lang/String;
    :cond_4
    sget-object v0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->myself:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    invoke-static {v0}, Lcom/miui/gallery/model/PeopleContactInfo;->getRelationValue(Lcom/miui/gallery/model/PeopleContactInfo$Relation;)Ljava/lang/String;

    move-result-object v10

    .line 522
    .local v10, "myselfRelationValue":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    invoke-static {v0, v10, v10}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->doMoveToRelation([JLjava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 546
    .end local v10    # "myselfRelationValue":Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "defaultNameForMyself":Ljava/lang/String;
    .restart local v9    # "haveOtherPeopleNameOfMe":Z
    .restart local v13    # "peopleName":Ljava/lang/String;
    :cond_5
    :try_start_3
    invoke-static {v6}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getPeopleName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 547
    const/4 v9, 0x1

    goto :goto_1

    .line 551
    :catch_0
    move-exception v8

    .line 552
    .local v8, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v0, "PeopleFaceMediaSet"

    const-string v1, "Failed to get people when moving face to myself group"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 554
    :try_start_5
    invoke-static {v6}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 561
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "defaultNameForMyself":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v8

    .line 562
    .restart local v8    # "e":Ljava/lang/Exception;
    const-string v0, "PeopleFaceMediaSet"

    const-string v1, "Error occurred when log event"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 554
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "defaultNameForMyself":Ljava/lang/String;
    :catchall_0
    move-exception v0

    :try_start_6
    invoke-static {v6}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .restart local v11    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    move-object v0, v13

    .line 557
    goto :goto_3
.end method

.method public static moveFaceToRelationGroup([JLjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "selectIds"    # [J
    .param p1, "relation"    # Ljava/lang/String;
    .param p2, "relationText"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 568
    invoke-static {p1}, Lcom/miui/gallery/model/PeopleContactInfo;->getRelationType(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->myself:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    invoke-virtual {v2}, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->getRelationType()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 570
    array-length v1, p0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 571
    const-string v1, "PeopleFaceMediaSet"

    const-string v2, "Moving more than one person to \'myself\' is not allowed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :goto_0
    return v0

    .line 574
    :cond_0
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    aget-wide v2, p0, v0

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->moveFaceToMyselfGroup(Landroid/content/Context;J)Z

    move-result v0

    goto :goto_0

    .line 577
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->doMoveToRelation([JLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private rename(Landroid/content/Context;Ljava/lang/String;ZLcom/miui/gallery/model/PeopleContactInfo;)Z
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "needNewNameAlbumMerge2This"    # Z
    .param p4, "contact"    # Lcom/miui/gallery/model/PeopleContactInfo;

    .prologue
    .line 209
    const-wide/16 v8, -0x1

    .line 210
    .local v8, "rowsAffected":J
    const/4 v2, 0x0

    .line 211
    .local v2, "newface":Lcom/miui/gallery/cloud/peopleface/PeopleFace;
    const/4 v3, 0x0

    .line 212
    .local v3, "oldface":Lcom/miui/gallery/cloud/peopleface/PeopleFace;
    sget-object v10, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->PEOPLE_FACE_URI:Landroid/net/Uri;

    monitor-enter v10

    .line 213
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->getBucketId()J

    move-result-wide v12

    move-object/from16 v0, p2

    invoke-static {p1, v0, v12, v13}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->getGroupByPeopleName(Landroid/content/Context;Ljava/lang/String;J)Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    move-result-object v2

    .line 214
    invoke-virtual {p0}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->getServerId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 215
    invoke-virtual {p0}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->getServerId()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->getGroupByServerId(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    move-result-object v3

    .line 223
    :goto_0
    if-nez v2, :cond_3

    .line 224
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-direct {p0, v3, v0, v1}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->renameOldGroup(Lcom/miui/gallery/cloud/peopleface/PeopleFace;Ljava/lang/String;Lcom/miui/gallery/model/PeopleContactInfo;)J

    move-result-wide v8

    .line 225
    const-wide/16 v12, -0x1

    cmp-long v7, v12, v8

    if-eqz v7, :cond_0

    .line 226
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->setName(Ljava/lang/String;)V

    .line 228
    :cond_0
    const/4 v7, 0x0

    monitor-exit v10

    .line 258
    :goto_1
    return v7

    .line 217
    :cond_1
    const-wide/16 v4, -0x1

    .line 218
    .local v4, "newfaceLocalId":J
    if-eqz v2, :cond_2

    .line 219
    iget-object v7, v2, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->_id:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 221
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7, v4, v5}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->getGroupByPeopleName(Landroid/content/Context;Ljava/lang/String;J)Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    move-result-object v3

    goto :goto_0

    .line 233
    .end local v4    # "newfaceLocalId":J
    :cond_3
    iget-object v7, v3, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->serverId:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 234
    iget-object v7, v3, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->_id:Ljava/lang/String;

    iget-object v11, v2, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->_id:Ljava/lang/String;

    invoke-direct {p0, v7, v11}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->moveFaceFromLocalA2B(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v7, v3, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->_id:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->deleteLocalGroups(Ljava/lang/String;)V

    .line 254
    :goto_2
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    const-wide/16 v10, -0x1

    cmp-long v7, v10, v8

    if-eqz v7, :cond_4

    .line 256
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->setName(Ljava/lang/String;)V

    .line 258
    :cond_4
    const/4 v7, 0x1

    goto :goto_1

    .line 236
    :cond_5
    :try_start_1
    iget-object v7, v2, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->serverId:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 237
    iget-object v7, v2, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->_id:Ljava/lang/String;

    iget-object v11, v3, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->_id:Ljava/lang/String;

    invoke-direct {p0, v7, v11}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->moveFaceFromLocalA2B(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v7, v2, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->_id:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->deleteLocalGroups(Ljava/lang/String;)V

    .line 239
    move-object/from16 v0, p2

    invoke-direct {p0, v3, v0}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->renameOldGroup(Lcom/miui/gallery/cloud/peopleface/PeopleFace;Ljava/lang/String;)J

    move-result-wide v8

    goto :goto_2

    .line 241
    :cond_6
    iget-object v7, v3, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->serverId:Ljava/lang/String;

    invoke-static {v7}, Lcom/miui/gallery/preference/GalleryPreferences$Face;->isFaceRecommendGroupHidden(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, v2, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->serverId:Ljava/lang/String;

    .line 242
    invoke-static {v7}, Lcom/miui/gallery/preference/GalleryPreferences$Face;->isFaceRecommendGroupHidden(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v6, 0x1

    .line 243
    .local v6, "recommendGroupHidden":Z
    :goto_3
    if-eqz p3, :cond_8

    .line 244
    invoke-direct {p0, v2, v3}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->mergeGroupA2GroupB(Lcom/miui/gallery/cloud/peopleface/PeopleFace;Lcom/miui/gallery/cloud/peopleface/PeopleFace;)J

    move-result-wide v8

    .line 245
    iget-object v7, v3, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->serverId:Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/miui/gallery/preference/GalleryPreferences$Face;->setFaceRecommendGroupHidden(Ljava/lang/String;Z)V

    .line 246
    move-object/from16 v0, p2

    invoke-direct {p0, v3, v0}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->renameOldGroup(Lcom/miui/gallery/cloud/peopleface/PeopleFace;Ljava/lang/String;)J

    goto :goto_2

    .line 254
    .end local v6    # "recommendGroupHidden":Z
    :catchall_0
    move-exception v7

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 242
    :cond_7
    const/4 v6, 0x0

    goto :goto_3

    .line 249
    .restart local v6    # "recommendGroupHidden":Z
    :cond_8
    :try_start_2
    invoke-direct {p0, v3, v2}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->mergeGroupA2GroupB(Lcom/miui/gallery/cloud/peopleface/PeopleFace;Lcom/miui/gallery/cloud/peopleface/PeopleFace;)J

    move-result-wide v8

    .line 250
    iget-object v7, v2, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->serverId:Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/miui/gallery/preference/GalleryPreferences$Face;->setFaceRecommendGroupHidden(Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private renameOldGroup(Lcom/miui/gallery/cloud/peopleface/PeopleFace;Ljava/lang/String;)J
    .locals 2
    .param p1, "oldface"    # Lcom/miui/gallery/cloud/peopleface/PeopleFace;
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    .line 276
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->renameOldGroup(Lcom/miui/gallery/cloud/peopleface/PeopleFace;Ljava/lang/String;Lcom/miui/gallery/model/PeopleContactInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method private renameOldGroup(Lcom/miui/gallery/cloud/peopleface/PeopleFace;Ljava/lang/String;Lcom/miui/gallery/model/PeopleContactInfo;)J
    .locals 9
    .param p1, "oldface"    # Lcom/miui/gallery/cloud/peopleface/PeopleFace;
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "contact"    # Lcom/miui/gallery/model/PeopleContactInfo;

    .prologue
    .line 280
    const-wide/16 v2, -0x1

    .line 281
    .local v2, "rowsAffected":J
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 282
    .local v4, "values":Landroid/content/ContentValues;
    if-eqz p1, :cond_4

    .line 283
    const-string v5, "peopleName"

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    if-eqz p3, :cond_2

    .line 286
    invoke-virtual {p3}, Lcom/miui/gallery/model/PeopleContactInfo;->formatContactJson()Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "contactJson":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 288
    const-string v5, "peopleContactJsonInfo"

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :cond_0
    iget-object v5, p3, Lcom/miui/gallery/model/PeopleContactInfo;->relationWithMe:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 292
    iget-object v5, p3, Lcom/miui/gallery/model/PeopleContactInfo;->relationWithMe:Ljava/lang/String;

    .line 293
    invoke-static {v5}, Lcom/miui/gallery/model/PeopleContactInfo;->getRelationType(Ljava/lang/String;)I

    move-result v1

    .line 294
    .local v1, "relationType":I
    if-ltz v1, :cond_1

    .line 295
    const-string v5, "relationType"

    .line 296
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 295
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 298
    :cond_1
    invoke-static {v1}, Lcom/miui/gallery/model/PeopleContactInfo;->isUserDefineRelation(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 299
    const-string v5, "relationText"

    iget-object v6, p3, Lcom/miui/gallery/model/PeopleContactInfo;->relationWithMeText:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .end local v0    # "contactJson":Ljava/lang/String;
    .end local v1    # "relationType":I
    :cond_2
    iget v5, p1, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->localFlag:I

    if-nez v5, :cond_3

    .line 305
    const-string v5, "localFlag"

    const/16 v6, 0xa

    .line 306
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 305
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 309
    :cond_3
    const-string v5, "_id = ? "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p1, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->_id:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->safeUpdateFace(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    .line 313
    :cond_4
    return-wide v2
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->mName:Ljava/lang/String;

    .line 86
    return-void
.end method


# virtual methods
.method public createBabyAlbumAndAddItems(Ljava/lang/String;Lcom/miui/gallery/cloud/baby/BabyInfo;Landroid/app/Activity;)Ljava/lang/String;
    .locals 7
    .param p1, "albumName"    # Ljava/lang/String;
    .param p2, "babyInfo"    # Lcom/miui/gallery/cloud/baby/BabyInfo;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 392
    invoke-static {p3, p1}, Lcom/miui/gallery/cloud/CloudUtils;->getGroupByFileName(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/data/DBCloud;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 393
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0c008b

    invoke-virtual {p3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 394
    const v3, 0x7f0c0425

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    .line 396
    invoke-virtual {p3, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 394
    invoke-static {p3, v3}, Lcom/miui/gallery/util/ToastUtils;->makeTextLong(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 401
    :cond_0
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v3

    .line 400
    invoke-static {v3, p1}, Lcom/miui/gallery/cloud/CreateGroupItem;->localCreateBabyGroup(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 402
    .local v2, "localId":Ljava/lang/String;
    new-instance v0, Lcom/miui/gallery/model/SendToCloudFolderItem;

    move v3, v1

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/model/SendToCloudFolderItem;-><init>(ILjava/lang/String;ZLjava/lang/String;Lcom/miui/gallery/cloud/baby/BabyInfo;)V

    .line 406
    .local v0, "cloudFolder":Lcom/miui/gallery/model/SendToCloudFolderItem;
    invoke-virtual {p0}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->getAllImagesData()Landroid/database/Cursor;

    move-result-object v3

    const v4, 0x7f0c013f

    invoke-static {p3, v3, v0, v1, v4}, Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask;->instance(Landroid/app/Activity;Landroid/database/Cursor;Lcom/miui/gallery/model/SendToCloudFolderItem;II)Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask;

    move-result-object v6

    .line 407
    .local v6, "task":Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask;
    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v6, v1}, Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 408
    return-object v2
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 683
    const/4 v0, 0x0

    return v0
.end method

.method public getAllImagesData()Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/provider/FaceManager;->queryAllImagesOfOnePerson(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 413
    .local v0, "cursor":Landroid/database/Cursor;
    return-object v0
.end method

.method public getBucketId()J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->mId:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->mServerId:Ljava/lang/String;

    return-object v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeAnAlbumToThis(Ljava/lang/String;)V
    .locals 5
    .param p1, "peopleServerIdToBeMerged"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    .line 373
    invoke-virtual {p0}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    :goto_0
    return-void

    .line 376
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 377
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "localFlag"

    const/16 v2, 0xc

    .line 378
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 377
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 379
    const-string v1, "groupId"

    invoke-virtual {p0}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->getServerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v1, "serverId = ? and localFlag != ? "

    new-array v2, v4, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    .line 387
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 381
    invoke-static {v0, v1, v2}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->safeUpdateFace(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    .line 388
    invoke-virtual {p0}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->changeChildrenOfPeopleA2PeopleB(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public rename(Landroid/content/Context;Ljava/lang/String;Lcom/miui/gallery/model/PeopleContactInfo;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "contact"    # Lcom/miui/gallery/model/PeopleContactInfo;

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->rename(Landroid/content/Context;Ljava/lang/String;ZLcom/miui/gallery/model/PeopleContactInfo;)Z

    move-result v0

    return v0
.end method

.method public rename(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "needNewNameAlbumMerge2This"    # Z

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->rename(Landroid/content/Context;Ljava/lang/String;ZLcom/miui/gallery/model/PeopleContactInfo;)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 688
    iget-wide v0, p0, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 689
    iget-object v0, p0, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->mServerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 690
    iget-object v0, p0, Lcom/miui/gallery/provider/deprecated/NormalPeopleFaceMediaSet;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 691
    return-void
.end method
