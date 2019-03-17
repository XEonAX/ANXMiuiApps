.class public Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;
.super Lcom/miui/gallery/cloud/SyncFromLocalBase;
.source "SyncFaceFromLocal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;
    }
.end annotation


# instance fields
.field private mCreatePeople:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

.field private mDeleteFace:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

.field private mIgnorePeople:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

.field private mMergePeople:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

.field private mMoveFace:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

.field private mRecoveryPeople:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

.field private mRenamePeople:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mAccount"    # Landroid/accounts/Account;
    .param p3, "mExtendedAuthToken"    # Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/cloud/SyncFromLocalBase;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;)Landroid/accounts/Account;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;)Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mExtendedAuthToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    return-object v0
.end method


# virtual methods
.method protected generateDBImage(Landroid/database/Cursor;)Lcom/miui/gallery/data/DBItem;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 54
    new-instance v0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    invoke-direct {v0, p1}, Lcom/miui/gallery/cloud/peopleface/PeopleFace;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method

.method protected getBaseUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/miui/gallery/cloud/peopleface/FaceDataManager;->PEOPLE_FACE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method protected getSelectionClause()Ljava/lang/String;
    .locals 4

    .prologue
    .line 59
    const-string v0, " (%s) "

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "localFlag != 0"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method protected handleRequestCloudItemList()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    .line 138
    const/4 v8, 0x0

    .line 140
    .local v8, "result":I
    :try_start_0
    iget-object v9, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mCreatePeople:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-virtual {v9}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->needRequest()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 141
    const-string v9, "SyncFaceFromLocal"

    const-string/jumbo v10, "start create group items"

    invoke-static {v9, v10}, Lcom/miui/gallery/util/SyncLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    new-instance v0, Lcom/miui/gallery/cloud/peopleface/syncoperation/CreatePeopleOperation;

    iget-object v9, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mContext:Landroid/content/Context;

    invoke-direct {v0, v9}, Lcom/miui/gallery/cloud/peopleface/syncoperation/CreatePeopleOperation;-><init>(Landroid/content/Context;)V

    .line 144
    .local v0, "createGroup":Lcom/miui/gallery/cloud/peopleface/syncoperation/FaceRequestOperationBase;
    iget-object v9, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mCreatePeople:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-virtual {v9, v0}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->request(Lcom/miui/gallery/cloud/peopleface/syncoperation/FaceRequestOperationBase;)I

    move-result v8

    .line 146
    if-ne v8, v11, :cond_1

    .line 211
    .end local v0    # "createGroup":Lcom/miui/gallery/cloud/peopleface/syncoperation/FaceRequestOperationBase;
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v9, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mRecoveryPeople:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-virtual {v9}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->needRequest()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 153
    new-instance v6, Lcom/miui/gallery/cloud/peopleface/syncoperation/RecoveryPeopleOperation;

    iget-object v9, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mContext:Landroid/content/Context;

    invoke-direct {v6, v9}, Lcom/miui/gallery/cloud/peopleface/syncoperation/RecoveryPeopleOperation;-><init>(Landroid/content/Context;)V

    .line 154
    .local v6, "recovery":Lcom/miui/gallery/cloud/peopleface/syncoperation/FaceRequestOperationBase;
    iget-object v9, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mRecoveryPeople:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-virtual {v9, v6}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->request(Lcom/miui/gallery/cloud/peopleface/syncoperation/FaceRequestOperationBase;)I

    move-result v8

    .line 155
    if-eq v8, v11, :cond_0

    .line 161
    .end local v6    # "recovery":Lcom/miui/gallery/cloud/peopleface/syncoperation/FaceRequestOperationBase;
    :cond_2
    iget-object v9, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mMoveFace:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-virtual {v9}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->needRequest()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 162
    const-string v9, "SyncFaceFromLocal"

    const-string/jumbo v10, "start move image items"

    invoke-static {v9, v10}, Lcom/miui/gallery/util/SyncLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    new-instance v5, Lcom/miui/gallery/cloud/peopleface/syncoperation/MoveFaceOperation;

    iget-object v9, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mContext:Landroid/content/Context;

    invoke-direct {v5, v9}, Lcom/miui/gallery/cloud/peopleface/syncoperation/MoveFaceOperation;-><init>(Landroid/content/Context;)V

    .line 164
    .local v5, "move":Lcom/miui/gallery/cloud/peopleface/syncoperation/FaceRequestOperationBase;
    iget-object v9, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mMoveFace:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-virtual {v9, v5}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->request(Lcom/miui/gallery/cloud/peopleface/syncoperation/FaceRequestOperationBase;)I

    move-result v8

    .line 165
    if-eq v8, v11, :cond_0

    .line 170
    .end local v5    # "move":Lcom/miui/gallery/cloud/peopleface/syncoperation/FaceRequestOperationBase;
    :cond_3
    iget-object v9, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mDeleteFace:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-virtual {v9}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->needRequest()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 171
    const-string v9, "SyncFaceFromLocal"

    const-string/jumbo v10, "start delete image items"

    invoke-static {v9, v10}, Lcom/miui/gallery/util/SyncLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    new-instance v1, Lcom/miui/gallery/cloud/peopleface/syncoperation/DeleteFaceOperation;

    iget-object v9, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mContext:Landroid/content/Context;

    invoke-direct {v1, v9}, Lcom/miui/gallery/cloud/peopleface/syncoperation/DeleteFaceOperation;-><init>(Landroid/content/Context;)V

    .line 173
    .local v1, "delete":Lcom/miui/gallery/cloud/peopleface/syncoperation/FaceRequestOperationBase;
    iget-object v9, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mDeleteFace:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-virtual {v9, v1}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->request(Lcom/miui/gallery/cloud/peopleface/syncoperation/FaceRequestOperationBase;)I

    move-result v8

    .line 174
    if-eq v8, v11, :cond_0

    .line 179
    .end local v1    # "delete":Lcom/miui/gallery/cloud/peopleface/syncoperation/FaceRequestOperationBase;
    :cond_4
    iget-object v9, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mRenamePeople:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-virtual {v9}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->needRequest()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 180
    const-string v9, "SyncFaceFromLocal"

    const-string/jumbo v10, "start rename group items"

    invoke-static {v9, v10}, Lcom/miui/gallery/util/SyncLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    new-instance v7, Lcom/miui/gallery/cloud/peopleface/syncoperation/RenamePeopleOperation;

    iget-object v9, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mContext:Landroid/content/Context;

    invoke-direct {v7, v9}, Lcom/miui/gallery/cloud/peopleface/syncoperation/RenamePeopleOperation;-><init>(Landroid/content/Context;)V

    .line 183
    .local v7, "rename":Lcom/miui/gallery/cloud/peopleface/syncoperation/FaceRequestOperationBase;
    iget-object v9, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mRenamePeople:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-virtual {v9, v7}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->request(Lcom/miui/gallery/cloud/peopleface/syncoperation/FaceRequestOperationBase;)I

    move-result v8

    .line 184
    if-eq v8, v11, :cond_0

    .line 189
    .end local v7    # "rename":Lcom/miui/gallery/cloud/peopleface/syncoperation/FaceRequestOperationBase;
    :cond_5
    iget-object v9, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mMergePeople:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-virtual {v9}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->needRequest()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 190
    const-string v9, "SyncFaceFromLocal"

    const-string/jumbo v10, "start delete group items"

    invoke-static {v9, v10}, Lcom/miui/gallery/util/SyncLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    new-instance v4, Lcom/miui/gallery/cloud/peopleface/syncoperation/MergePeopleOperation;

    iget-object v9, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mContext:Landroid/content/Context;

    invoke-direct {v4, v9}, Lcom/miui/gallery/cloud/peopleface/syncoperation/MergePeopleOperation;-><init>(Landroid/content/Context;)V

    .line 192
    .local v4, "merge":Lcom/miui/gallery/cloud/peopleface/syncoperation/FaceRequestOperationBase;
    iget-object v9, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mMergePeople:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-virtual {v9, v4}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->request(Lcom/miui/gallery/cloud/peopleface/syncoperation/FaceRequestOperationBase;)I

    move-result v8

    .line 194
    if-eq v8, v11, :cond_0

    .line 199
    .end local v4    # "merge":Lcom/miui/gallery/cloud/peopleface/syncoperation/FaceRequestOperationBase;
    :cond_6
    iget-object v9, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mIgnorePeople:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-virtual {v9}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->needRequest()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 200
    const-string v9, "SyncFaceFromLocal"

    const-string/jumbo v10, "start delete group items"

    invoke-static {v9, v10}, Lcom/miui/gallery/util/SyncLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    new-instance v3, Lcom/miui/gallery/cloud/peopleface/syncoperation/IgnorePeopleOperation;

    iget-object v9, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mContext:Landroid/content/Context;

    invoke-direct {v3, v9}, Lcom/miui/gallery/cloud/peopleface/syncoperation/IgnorePeopleOperation;-><init>(Landroid/content/Context;)V

    .line 202
    .local v3, "ignore":Lcom/miui/gallery/cloud/peopleface/syncoperation/FaceRequestOperationBase;
    iget-object v9, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mIgnorePeople:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-virtual {v9, v3}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->request(Lcom/miui/gallery/cloud/peopleface/syncoperation/FaceRequestOperationBase;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 203
    if-ne v8, v11, :cond_0

    goto/16 :goto_0

    .line 207
    .end local v3    # "ignore":Lcom/miui/gallery/cloud/peopleface/syncoperation/FaceRequestOperationBase;
    :catch_0
    move-exception v2

    .line 208
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method protected initRequestCloudItemList()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;-><init>(Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mCreatePeople:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    .line 66
    new-instance v0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;-><init>(Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mMoveFace:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    .line 67
    new-instance v0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;-><init>(Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mDeleteFace:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    .line 68
    new-instance v0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;-><init>(Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mMergePeople:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    .line 69
    new-instance v0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;-><init>(Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mRenamePeople:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    .line 70
    new-instance v0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;-><init>(Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mIgnorePeople:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    .line 71
    new-instance v0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;-><init>(Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mRecoveryPeople:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    .line 72
    return-void
.end method

.method protected putToRequestCloudItemList(Lcom/miui/gallery/data/DBItem;)V
    .locals 6
    .param p1, "dbItem"    # Lcom/miui/gallery/data/DBItem;

    .prologue
    const/4 v5, 0x0

    .line 76
    move-object v0, p1

    check-cast v0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;

    .line 77
    .local v0, "face":Lcom/miui/gallery/cloud/peopleface/PeopleFace;
    iget-object v3, v0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->type:Ljava/lang/String;

    const-string v4, "PEOPLE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 81
    .local v1, "isPeopleItem":Z
    iget v3, v0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->visibilityType:I

    packed-switch v3, :pswitch_data_0

    .line 89
    :goto_0
    iget v3, v0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->localFlag:I

    packed-switch v3, :pswitch_data_1

    .line 133
    :cond_0
    :goto_1
    :pswitch_0
    return-void

    .line 83
    :pswitch_1
    new-instance v2, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;

    invoke-direct {v2, v5, v0}, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;-><init>(ILcom/miui/gallery/cloud/peopleface/PeopleFace;)V

    .line 84
    .local v2, "requestItem":Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;
    iget-object v3, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mRecoveryPeople:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-virtual {v3, v2}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->addItem(Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;)V

    goto :goto_0

    .line 91
    .end local v2    # "requestItem":Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;
    :pswitch_2
    new-instance v2, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;

    invoke-direct {v2, v5, v0}, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;-><init>(ILcom/miui/gallery/cloud/peopleface/PeopleFace;)V

    .line 92
    .restart local v2    # "requestItem":Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;
    iget-object v3, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mCreatePeople:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-virtual {v3, v2}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->addItem(Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;)V

    goto :goto_1

    .line 96
    .end local v2    # "requestItem":Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;
    :pswitch_3
    new-instance v2, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;

    invoke-direct {v2, v5, v0}, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;-><init>(ILcom/miui/gallery/cloud/peopleface/PeopleFace;)V

    .line 97
    .restart local v2    # "requestItem":Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;
    if-nez v1, :cond_0

    .line 98
    iget-object v3, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mDeleteFace:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-virtual {v3, v2}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->addItem(Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;)V

    goto :goto_1

    .line 104
    .end local v2    # "requestItem":Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;
    :pswitch_4
    if-nez v1, :cond_0

    .line 105
    new-instance v2, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;

    invoke-direct {v2, v5, v0}, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;-><init>(ILcom/miui/gallery/cloud/peopleface/PeopleFace;)V

    .line 106
    .restart local v2    # "requestItem":Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;
    iget-object v3, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mMoveFace:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-virtual {v3, v2}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->addItem(Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;)V

    goto :goto_1

    .line 111
    .end local v2    # "requestItem":Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;
    :pswitch_5
    iget-object v3, v0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->groupId:Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/gallery/cloud/peopleface/PeopleFace;->serverId:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 112
    new-instance v2, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;

    invoke-direct {v2, v5, v0}, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;-><init>(ILcom/miui/gallery/cloud/peopleface/PeopleFace;)V

    .line 113
    .restart local v2    # "requestItem":Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;
    iget-object v3, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mMergePeople:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-virtual {v3, v2}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->addItem(Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;)V

    goto :goto_1

    .line 118
    .end local v2    # "requestItem":Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;
    :pswitch_6
    new-instance v2, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;

    invoke-direct {v2, v5, v0}, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;-><init>(ILcom/miui/gallery/cloud/peopleface/PeopleFace;)V

    .line 119
    .restart local v2    # "requestItem":Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;
    iget-object v3, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mIgnorePeople:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-virtual {v3, v2}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->addItem(Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;)V

    goto :goto_1

    .line 123
    .end local v2    # "requestItem":Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;
    :pswitch_7
    if-eqz v1, :cond_0

    .line 124
    new-instance v2, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;

    invoke-direct {v2, v5, v0}, Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;-><init>(ILcom/miui/gallery/cloud/peopleface/PeopleFace;)V

    .line 125
    .restart local v2    # "requestItem":Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;
    iget-object v3, p0, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal;->mRenamePeople:Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;

    invoke-virtual {v3, v2}, Lcom/miui/gallery/cloud/peopleface/SyncFaceFromLocal$RequestItemGroup;->addItem(Lcom/miui/gallery/cloud/peopleface/RequestFaceItem;)V

    goto :goto_1

    .line 81
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
    .end packed-switch

    .line 89
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
