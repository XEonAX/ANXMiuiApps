.class public Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;
.super Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;
.source "SharerBabyAlbumSettingActivity.java"


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAlbumId:Ljava/lang/String;

.field private mRefreshFuture:Lcom/miui/gallery/threadpool/Future;

.field private mSelfRelationText:Ljava/lang/String;

.field private mSyncFuture:Lcom/miui/gallery/threadpool/Future;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;)Lcom/miui/gallery/cloud/baby/BabyInfo;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->getBabyInfoFromDB()Lcom/miui/gallery/cloud/baby/BabyInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->getSelfRelationText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->syncShareInfoFromServer()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->mSelfRelationText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->mSelfRelationText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;Lcom/miui/gallery/threadpool/Future;)Lcom/miui/gallery/threadpool/Future;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;
    .param p1, "x1"    # Lcom/miui/gallery/threadpool/Future;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->mRefreshFuture:Lcom/miui/gallery/threadpool/Future;

    return-object p1
.end method

.method static synthetic access$500(Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->refreshSelfRelationText(Z)V

    return-void
.end method

.method private getBabyInfoFromDB()Lcom/miui/gallery/cloud/baby/BabyInfo;
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 233
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_ALBUM_URI:Landroid/net/Uri;

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "babyInfoJson"

    aput-object v2, v1, v6

    const-string v2, "_id = ?"

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->mBabyAlbumLocalId:Ljava/lang/Long;

    .line 239
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x0

    new-instance v5, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity$6;

    invoke-direct {v5, p0}, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity$6;-><init>(Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;)V

    .line 233
    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/util/GalleryUtils;->safeQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/GalleryUtils$QueryHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/baby/BabyInfo;

    return-object v0
.end method

.method private getEntry(Ljava/lang/String;II)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "valudArrayId"    # I
    .param p3, "entryArrayId"    # I

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "entries":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 126
    aget-object v3, v2, v1

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    aget-object v3, v0, v1

    .line 130
    :goto_1
    return-object v3

    .line 125
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getSelfRelationText()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 193
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->mAlbumId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->mBabyAlbumLocalId:Ljava/lang/Long;

    .line 195
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-static {v0}, Lcom/miui/gallery/cloud/CloudUtils;->getDBShareAlbumByLocalId(Ljava/lang/String;)Lcom/miui/gallery/data/DBShareAlbum;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Lcom/miui/gallery/data/DBShareAlbum;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->mAlbumId:Ljava/lang/String;

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->mAccountName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    invoke-static {}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->getAccountName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->mAccountName:Ljava/lang/String;

    .line 200
    :cond_1
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_USER_URI:Landroid/net/Uri;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "relationText"

    aput-object v2, v1, v5

    const-string v2, "%s=? AND %s=?"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "albumId"

    aput-object v4, v3, v5

    const-string/jumbo v4, "userId"

    aput-object v4, v3, v6

    .line 201
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->mAlbumId:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->mAccountName:Ljava/lang/String;

    aput-object v4, v3, v6

    const/4 v4, 0x0

    new-instance v5, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity$4;

    invoke-direct {v5, p0}, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity$4;-><init>(Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;)V

    .line 200
    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/util/GalleryUtils;->safeQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/GalleryUtils$QueryHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private refreshSelfRelationText(Z)V
    .locals 3
    .param p1, "needSyncIfEmpty"    # Z

    .prologue
    .line 161
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->mRefreshFuture:Lcom/miui/gallery/threadpool/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->mRefreshFuture:Lcom/miui/gallery/threadpool/Future;

    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity$2;-><init>(Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;)V

    new-instance v2, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity$3;

    invoke-direct {v2, p0, p1}, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity$3;-><init>(Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/threadpool/FutureListener;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->mRefreshFuture:Lcom/miui/gallery/threadpool/Future;

    goto :goto_0
.end method

.method private syncShareInfoFromServer()V
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->mAlbumId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->mAlbumId:Ljava/lang/String;

    const/4 v1, 0x1

    new-instance v2, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity$5;

    invoke-direct {v2, p0}, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity$5;-><init>(Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;)V

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/share/AlbumShareUIManager;->syncUserListForAlbumAsync(Ljava/lang/String;ZLcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->mSyncFuture:Lcom/miui/gallery/threadpool/Future;

    .line 230
    :cond_0
    return-void
.end method


# virtual methods
.method protected getIntentToAutoUploadPage()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 256
    invoke-super {p0}, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->getIntentToAutoUploadPage()Landroid/content/Intent;

    move-result-object v0

    .line 257
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "allow_to_reassociate"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 258
    return-object v0
.end method

.method protected getPreferenceResourceId()I
    .locals 1

    .prologue
    .line 51
    const v0, 0x7f070008

    return v0
.end method

.method protected justSaveInfo2DbByJson()V
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->mHaveSaveBabyInfo:Z

    if-eqz v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->saveBabyInfo()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 263
    packed-switch p1, :pswitch_data_0

    .line 277
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 265
    :pswitch_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    .line 266
    const-string v1, "baby-info"

    .line 267
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/baby/BabyInfo;

    .line 268
    .local v0, "babyInfo":Lcom/miui/gallery/cloud/baby/BabyInfo;
    iget-object v1, v0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mPeopleId:Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->mPeopleId:Ljava/lang/String;

    .line 269
    iget-boolean v1, v0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mAutoupdate:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->mIsAutoupdate:Ljava/lang/Boolean;

    .line 270
    const-string v1, "associate_people_face_local_id"

    const-wide/16 v2, -0x1

    .line 271
    invoke-virtual {p3, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 270
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->mFaceAlbumLocalId:Ljava/lang/Long;

    goto :goto_0

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->refreshSelfRelationText(Z)V

    .line 47
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 143
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->mRefreshFuture:Lcom/miui/gallery/threadpool/Future;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->mRefreshFuture:Lcom/miui/gallery/threadpool/Future;

    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->cancel()V

    .line 145
    iput-object v1, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->mRefreshFuture:Lcom/miui/gallery/threadpool/Future;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->mSyncFuture:Lcom/miui/gallery/threadpool/Future;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->mSyncFuture:Lcom/miui/gallery/threadpool/Future;

    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->cancel()V

    .line 149
    iput-object v1, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->mSyncFuture:Lcom/miui/gallery/threadpool/Future;

    .line 151
    :cond_1
    invoke-super {p0}, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->onDestroy()V

    .line 152
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->onPause()V

    .line 136
    const-string v0, "album_baby_share_setting"

    invoke-static {p0, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordPageEnd(Landroid/app/Activity;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->saveBabyInfo()V

    .line 139
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 156
    invoke-super {p0}, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->onResume()V

    .line 157
    const-string v0, "album_baby_share_setting"

    invoke-static {p0, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method protected saveBabyInfo()V
    .locals 5

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->babyInfoChanged()Z

    move-result v3

    if-nez v3, :cond_0

    .line 101
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->mPeopleId:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->toBabyInfo(Ljava/lang/String;I)Lcom/miui/gallery/cloud/baby/BabyInfo;

    move-result-object v2

    .line 61
    .local v2, "newBabyInfo":Lcom/miui/gallery/cloud/baby/BabyInfo;
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v3

    new-instance v4, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity$1;

    invoke-direct {v4, p0, v2}, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity$1;-><init>(Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;Lcom/miui/gallery/cloud/baby/BabyInfo;)V

    invoke-virtual {v3, v4}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    .line 94
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 95
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 96
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "baby-info"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 97
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 98
    const/16 v3, 0xc

    invoke-virtual {p0, v3, v1}, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->setResult(ILandroid/content/Intent;)V

    .line 100
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->mHaveSaveBabyInfo:Z

    goto :goto_0
.end method

.method protected setPreferencesValue()V
    .locals 4

    .prologue
    .line 113
    invoke-super {p0}, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->setPreferencesValue()V

    .line 115
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->mBabyNicknamePre:Landroid/preference/Preference;

    check-cast v0, Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->mNickName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->mBabySexPre:Landroid/preference/Preference;

    check-cast v0, Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->mSex:Ljava/lang/String;

    const v2, 0x7f0d0014

    const v3, 0x7f0d0001

    invoke-direct {p0, v1, v2, v3}, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->getEntry(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->mRelationPre:Landroid/preference/Preference;

    check-cast v0, Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->mSelfRelationText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->mChooseDate:Landroid/preference/Preference;

    check-cast v0, Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/gallery/activity/facebaby/SharerBabyAlbumSettingActivity;->mBirthday:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 120
    return-void
.end method
