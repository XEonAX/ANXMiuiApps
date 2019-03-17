.class public Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;
.super Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;
.source "OwnerBabyAlbumSettingActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mBabyFaceChanged:Z

.field private mCoverFaceId:Ljava/lang/String;

.field private mDatelistener:Lmiui/app/DatePickerDialog$OnDateSetListener;

.field private mNeedSaveBabyFace:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;-><init>()V

    .line 210
    new-instance v0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$5;

    invoke-direct {v0, p0}, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$5;-><init>(Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;)V

    iput-object v0, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mDatelistener:Lmiui/app/DatePickerDialog$OnDateSetListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mCoverFaceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;
    .param p1, "x1"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->loadAndSetBabyFace(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;Ljava/lang/String;Landroid/app/AlertDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/app/AlertDialog;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->validateInputTextAndUpdateButtonState(Ljava/lang/String;Landroid/app/AlertDialog;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;
    .param p1, "x1"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->loadBabyFace(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)V

    return-void
.end method

.method private createOrBrowse()Z
    .locals 4

    .prologue
    .line 186
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mBabyAlbumLocalId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadAndSetBabyFace(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)V
    .locals 4
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 162
    iget-object v2, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mCoverFaceBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 163
    const/4 v2, 0x1

    new-array v1, v2, [Landroid/graphics/RectF;

    .line 164
    .local v1, "faceRegion":[Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mPeopleId:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/miui/gallery/provider/FaceManager;->queryCoverImageOfOnePerson(Ljava/lang/String;[Landroid/graphics/RectF;)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "facePath":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$4;

    invoke-direct {v3, p0, v0, v1}, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$4;-><init>(Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;Ljava/lang/String;[Landroid/graphics/RectF;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 180
    .end local v0    # "facePath":Ljava/lang/String;
    .end local v1    # "faceRegion":[Landroid/graphics/RectF;
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mFace:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 177
    iget-object v2, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mFace:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mCoverFaceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private loadBabyFace(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)V
    .locals 4
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 472
    iget-object v2, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mCoverFaceId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 473
    const/4 v2, 0x1

    new-array v1, v2, [Landroid/graphics/RectF;

    .line 474
    .local v1, "faceRegions":[Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mCoverFaceId:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->getFaceByFaceId(Ljava/lang/String;[Landroid/graphics/RectF;)Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "facePath":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$10;

    invoke-direct {v3, p0, v0, v1}, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$10;-><init>(Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;Ljava/lang/String;[Landroid/graphics/RectF;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 485
    .end local v0    # "facePath":Ljava/lang/String;
    .end local v1    # "faceRegions":[Landroid/graphics/RectF;
    :cond_0
    return-void
.end method

.method private refreshBabyFace()V
    .locals 2

    .prologue
    .line 462
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$9;

    invoke-direct {v1, p0}, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$9;-><init>(Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    .line 469
    return-void
.end method

.method public static saveInfo2Db(Lcom/miui/gallery/cloud/baby/BabyInfo;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;)V
    .locals 9
    .param p0, "babyInfo"    # Lcom/miui/gallery/cloud/baby/BabyInfo;
    .param p1, "peopleId"    # Ljava/lang/String;
    .param p2, "faceAlbumLocalId"    # Ljava/lang/Long;
    .param p3, "albumLocalId"    # Ljava/lang/String;
    .param p4, "thumbnailInfo"    # Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 398
    if-nez p4, :cond_1

    .line 399
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 400
    .local v2, "values":Landroid/content/ContentValues;
    const-string v5, "babyInfoJson"

    if-nez p0, :cond_0

    const-string v4, ""

    :goto_0
    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string v4, "peopleId"

    invoke-virtual {v2, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v3, "_id = ?"

    .line 403
    .local v3, "where":Ljava/lang/String;
    new-array v0, v8, [Ljava/lang/String;

    aput-object p3, v0, v7

    .line 404
    .local v0, "args":[Ljava/lang/String;
    sget-object v4, Lcom/miui/gallery/cloud/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    invoke-static {v4, v2, v3, v0}, Lcom/miui/gallery/util/GalleryUtils;->safeUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 426
    .end local v0    # "args":[Ljava/lang/String;
    .end local v2    # "values":Landroid/content/ContentValues;
    .end local v3    # "where":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/miui/gallery/provider/GalleryContract$Album;->URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 427
    return-void

    .line 400
    .restart local v2    # "values":Landroid/content/ContentValues;
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/baby/BabyInfo;->toJSON()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 408
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_1
    const/16 v4, 0x42

    .line 409
    invoke-static {v4}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->transformToEditedColumnsElement(I)Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, "editColumnElement":Ljava/lang/String;
    const-string/jumbo v5, "update %s set %s=%s, %s=%s, %s=\'%s\', %s=coalesce(replace(%s, \'%s\', \'\') || \'%s\', \'%s\') where %s=%s"

    const/16 v4, 0xe

    new-array v6, v4, [Ljava/lang/Object;

    const-string v4, "cloud"

    aput-object v4, v6, v7

    const-string/jumbo v4, "thumbnailInfo"

    aput-object v4, v6, v8

    const/4 v4, 0x2

    .line 414
    invoke-virtual {p4}, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v4, 0x3

    const-string v7, "babyInfoJson"

    aput-object v7, v6, v4

    const/4 v7, 0x4

    if-nez p0, :cond_2

    const-string v4, ""

    .line 416
    :goto_2
    aput-object v4, v6, v7

    const/4 v4, 0x5

    const-string v7, "peopleId"

    aput-object v7, v6, v4

    const/4 v4, 0x6

    aput-object p1, v6, v4

    const/4 v4, 0x7

    const-string v7, "editedColumns"

    aput-object v7, v6, v4

    const/16 v4, 0x8

    const-string v7, "editedColumns"

    aput-object v7, v6, v4

    const/16 v4, 0x9

    aput-object v1, v6, v4

    const/16 v4, 0xa

    aput-object v1, v6, v4

    const/16 v4, 0xb

    aput-object v1, v6, v4

    const/16 v4, 0xc

    const-string v7, "_id"

    aput-object v7, v6, v4

    const/16 v4, 0xd

    aput-object p3, v6, v4

    .line 411
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/gallery/util/GalleryUtils;->safeExec(Ljava/lang/String;)Z

    goto :goto_1

    .line 416
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/baby/BabyInfo;->toJSON()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method

.method private validateInputTextAndUpdateButtonState(Ljava/lang/String;Landroid/app/AlertDialog;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 348
    invoke-static {p0, p1}, Lcom/miui/gallery/cloud/CreateGroupItem;->checkFileNameValid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "errorTips":Ljava/lang/String;
    const/4 v1, -0x1

    invoke-virtual {p2, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 350
    return-object v0
.end method


# virtual methods
.method protected getIntentToAutoUploadPage()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 489
    invoke-super {p0}, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->getIntentToAutoUploadPage()Landroid/content/Intent;

    move-result-object v0

    .line 491
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "allow_to_reassociate"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 492
    return-object v0
.end method

.method protected getPreferenceResourceId()I
    .locals 1

    .prologue
    .line 191
    const v0, 0x7f070005

    return v0
.end method

.method protected justSaveInfo2DbByJson()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 382
    iget-boolean v0, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mHaveSaveBabyInfo:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->createOrBrowse()Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    invoke-virtual {p0}, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->babyInfoChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mNeedSaveBabyFace:Z

    if-nez v0, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mPeopleId:Ljava/lang/String;

    .line 387
    invoke-virtual {p0, v0, v5}, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->toBabyInfo(Ljava/lang/String;I)Lcom/miui/gallery/cloud/baby/BabyInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mPeopleId:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mFaceAlbumLocalId:Ljava/lang/Long;

    iget-object v3, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mBabyAlbumLocalId:Ljava/lang/Long;

    .line 389
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mThumbnailInfo:Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;

    .line 386
    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->saveInfo2Db(Lcom/miui/gallery/cloud/baby/BabyInfo;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;)V

    .line 391
    iput-boolean v5, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mHaveSaveBabyInfo:Z

    .line 392
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mNeedSaveBabyFace:Z

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v1, -0x1

    .line 431
    sparse-switch p1, :sswitch_data_0

    .line 457
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 433
    :sswitch_0
    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    .line 434
    const-string v1, "picked_face_id"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mCoverFaceId:Ljava/lang/String;

    .line 435
    invoke-direct {p0}, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->createOrBrowse()Z

    move-result v1

    if-nez v1, :cond_2

    .line 436
    iget-object v1, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mThumbnailInfo:Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;

    if-nez v1, :cond_1

    .line 437
    new-instance v1, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;

    iget-object v2, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mBabyAlbumLocalId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-boolean v4, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mIsOtherShareAlbum:Z

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;-><init>(JZLjava/lang/String;)V

    iput-object v1, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mThumbnailInfo:Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;

    .line 441
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mThumbnailInfo:Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;

    iget-object v2, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mCoverFaceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->setFaceId(Ljava/lang/String;)Z

    .line 443
    :cond_2
    iput-boolean v6, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mBabyFaceChanged:Z

    .line 444
    iput-boolean v6, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mNeedSaveBabyFace:Z

    .line 445
    invoke-direct {p0}, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->refreshBabyFace()V

    goto :goto_0

    .line 450
    :sswitch_1
    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    .line 451
    const-string v1, "baby-info"

    .line 452
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/baby/BabyInfo;

    .line 453
    .local v0, "babyInfo":Lcom/miui/gallery/cloud/baby/BabyInfo;
    iget-boolean v1, v0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mAutoupdate:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mIsAutoupdate:Ljava/lang/Boolean;

    goto :goto_0

    .line 431
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1f -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 66
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "faceAlbumLocalId"

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mFaceAlbumLocalId:Ljava/lang/Long;

    .line 68
    const-string v2, "faceAlbumServerId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    const-string v2, "faceAlbumServerId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mPeopleId:Ljava/lang/String;

    .line 71
    :cond_0
    const-string v2, "faceAlbumCoverFaceServerId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mCoverFaceId:Ljava/lang/String;

    .line 73
    iget-object v2, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mBabyNicknamePre:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 74
    iget-object v2, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mBabySexPre:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 75
    iget-object v2, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mRelationPre:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 77
    const v2, 0x7f1200d5

    invoke-virtual {p0, v2}, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 78
    .local v1, "finish":Landroid/view/View;
    invoke-direct {p0}, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->createOrBrowse()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 81
    const-string v2, "birthday"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mBirthday:Ljava/lang/String;

    .line 82
    iget-object v2, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mBirthday:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->getBirthYearMonthDay(Ljava/lang/String;)V

    .line 83
    const-string v2, "name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mNickName:Ljava/lang/String;

    .line 84
    iget-object v2, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mNickName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    const v2, 0x7f0c01e0

    invoke-virtual {p0, v2}, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mNickName:Ljava/lang/String;

    .line 88
    :cond_1
    new-instance v2, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$1;-><init>(Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v2, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mFace:Landroid/widget/ImageView;

    new-instance v3, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$2;

    invoke-direct {v3, p0}, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$2;-><init>(Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-direct {p0}, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->createOrBrowse()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 119
    invoke-virtual {p0}, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->setCoverFaceAndBirthdayForCreateBaby()V

    .line 121
    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 231
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 235
    :goto_0
    invoke-super {p0, p1}, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 233
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->onBackPressed()V

    goto :goto_0

    .line 231
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->onPause()V

    .line 132
    const-string v0, "album_baby_share_owner_setting"

    invoke-static {p0, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordPageEnd(Landroid/app/Activity;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mBabySexPre:Landroid/preference/Preference;

    if-ne p1, v0, :cond_1

    .line 242
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    iput-object p2, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mSex:Ljava/lang/String;

    .line 243
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mBabySexPre:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mSex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 244
    iget-object v1, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mBabySexPre:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mBabySexPre:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 252
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 245
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mRelationPre:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 246
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    iput-object p2, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mRelation:Ljava/lang/String;

    .line 247
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mRelationPre:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mRelation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mRelationPre:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/ListPreference;

    .line 249
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mRelationText:Ljava/lang/String;

    .line 250
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mRelationPre:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mRelationText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 12
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v8, 0x1

    .line 258
    const-string v1, "baby_birthday"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 260
    iget v1, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mBirthdayYear:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mBirthdayMonth:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mBirthdayDay:I

    if-nez v1, :cond_1

    .line 261
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->getCurrentYearMonthDay(J)[I

    move-result-object v6

    .line 262
    .local v6, "days":[I
    const/4 v1, 0x0

    aget v3, v6, v1

    .line 263
    .local v3, "year":I
    aget v7, v6, v8

    .line 264
    .local v7, "month":I
    const/4 v1, 0x2

    aget v5, v6, v1

    .line 270
    .end local v6    # "days":[I
    .local v5, "day":I
    :goto_0
    new-instance v0, Lmiui/app/DatePickerDialog;

    iget-object v2, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mDatelistener:Lmiui/app/DatePickerDialog$OnDateSetListener;

    add-int/lit8 v4, v7, -0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lmiui/app/DatePickerDialog;-><init>(Landroid/content/Context;Lmiui/app/DatePickerDialog$OnDateSetListener;III)V

    .line 273
    .local v0, "dpd":Lmiui/app/DatePickerDialog;
    invoke-virtual {v0}, Lmiui/app/DatePickerDialog;->show()V

    move v1, v8

    .line 278
    .end local v0    # "dpd":Lmiui/app/DatePickerDialog;
    .end local v3    # "year":I
    .end local v5    # "day":I
    .end local v7    # "month":I
    :goto_1
    return v1

    .line 266
    :cond_1
    iget v3, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mBirthdayYear:I

    .line 267
    .restart local v3    # "year":I
    iget v7, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mBirthdayMonth:I

    .line 268
    .restart local v7    # "month":I
    iget v5, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mBirthdayDay:I

    .restart local v5    # "day":I
    goto :goto_0

    .line 275
    .end local v3    # "year":I
    .end local v5    # "day":I
    .end local v7    # "month":I
    :cond_2
    const-string v1, "baby_name"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 276
    iget-object v1, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mNickName:Ljava/lang/String;

    invoke-virtual {p0, v1, p0}, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->rename(Ljava/lang/String;Landroid/app/Activity;)V

    .line 278
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_1
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0}, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->onResume()V

    .line 126
    const-string v0, "album_baby_share_owner_setting"

    invoke-static {p0, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public rename(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 8
    .param p1, "oldName"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v7, 0x0

    .line 282
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 284
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 283
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 285
    .local v3, "layoutInflater":Landroid/view/LayoutInflater;
    const v5, 0x7f0c0268

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 286
    const v5, 0x7f04002f

    invoke-virtual {v3, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 288
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f1200dd

    .line 289
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 291
    .local v2, "editView":Landroid/widget/EditText;
    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 292
    invoke-virtual {v2}, Landroid/widget/EditText;->selectAll()V

    .line 293
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 294
    const v5, 0x104000a

    new-instance v6, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$6;

    invoke-direct {v6, p0, v2, p2}, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$6;-><init>(Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;Landroid/widget/EditText;Landroid/app/Activity;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 311
    const/high16 v5, 0x1040000

    invoke-virtual {v0, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 312
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 313
    .local v1, "dialog":Landroid/app/AlertDialog;
    new-instance v5, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$7;

    invoke-direct {v5, p0, v2, v1}, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$7;-><init>(Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 320
    new-instance v5, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$8;

    invoke-direct {v5, p0, v2, v1, p2}, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$8;-><init>(Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;Landroid/widget/EditText;Landroid/app/AlertDialog;Landroid/app/Activity;)V

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 341
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 342
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 344
    return-void
.end method

.method protected saveBabyInfo()V
    .locals 6

    .prologue
    .line 355
    invoke-direct {p0}, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->createOrBrowse()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->babyInfoChanged()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mBabyFaceChanged:Z

    if-nez v3, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mPeopleId:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->toBabyInfo(Ljava/lang/String;I)Lcom/miui/gallery/cloud/baby/BabyInfo;

    move-result-object v0

    .line 361
    .local v0, "babyInfo":Lcom/miui/gallery/cloud/baby/BabyInfo;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 362
    .local v2, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 363
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v3, "baby-info"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 364
    const-string v3, "name"

    iget-object v4, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mNickName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v3, "babyAlbumLocalId"

    iget-object v4, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mBabyAlbumLocalId:Ljava/lang/Long;

    .line 367
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 366
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 368
    const-string v3, "baby-people-id"

    iget-object v4, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mPeopleId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v3, "faceAlbumLocalId"

    iget-object v4, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mFaceAlbumLocalId:Ljava/lang/Long;

    .line 370
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 369
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 372
    iget-object v3, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mThumbnailInfo:Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;

    if-eqz v3, :cond_2

    .line 373
    const-string/jumbo v3, "thumbnail_info_of_baby"

    iget-object v4, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mThumbnailInfo:Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;

    invoke-virtual {v4}, Lcom/miui/gallery/provider/deprecated/ThumbnailInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :cond_2
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 377
    const/16 v3, 0xc

    invoke-virtual {p0, v3, v2}, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected setCoverFaceAndBirthdayForCreateBaby()V
    .locals 2

    .prologue
    .line 136
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$3;

    invoke-direct {v1, p0}, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$3;-><init>(Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    .line 159
    return-void
.end method

.method protected setPreferencesValue()V
    .locals 2

    .prologue
    .line 196
    invoke-super {p0}, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->setPreferencesValue()V

    .line 198
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mBabyNicknamePre:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mNickName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mChooseDate:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mBirthday:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mBabySexPre:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mSex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mBabySexPre:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mBabySexPre:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mRelationPre:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mRelation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mRelationPre:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/ListPreference;

    .line 206
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mRelationText:Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mRelationPre:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mRelationText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 208
    return-void
.end method
