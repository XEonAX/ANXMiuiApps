.class public Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;
.super Ljava/lang/Object;
.source "BabyAlbumDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/BabyAlbumDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyRecommendationPhotoHelper"
.end annotation


# instance fields
.field private mAllBabyAlbumPhoto:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mBabyAlbumRecommendationFinder:Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;

.field private mBabyFaceFinder:Lcom/miui/gallery/util/baby/BabyFaceFinder;

.field private mRecommendPhotoDatas:Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;

.field final synthetic this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    .prologue
    .line 505
    iput-object p1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 505
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->seeIfHasRecommendationPhotoFromFaceAlbum(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 505
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->onBabyPicturesPicked(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 505
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->onSaveChoosedPeopleAndGo2ChooseFace(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 505
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->refreshRecommandBar(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;
    .param p1, "x1"    # Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;

    .prologue
    .line 505
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->refreshRecommandBar(Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;

    .prologue
    .line 505
    invoke-direct {p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->disappearRecommendationView()V

    return-void
.end method

.method private disappearRecommendationView()V
    .locals 2

    .prologue
    .line 582
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->access$700(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 583
    return-void
.end method

.method private displayRecommendationView()V
    .locals 2

    .prologue
    .line 586
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->access$700(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 587
    return-void
.end method

.method private onBabyPicturesPicked(Landroid/content/Intent;)V
    .locals 13
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 685
    const-string v1, "pick-result-data"

    .line 686
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 687
    .local v7, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 749
    :cond_0
    :goto_0
    return-void

    .line 690
    :cond_1
    const/4 v6, 0x0

    .line 691
    .local v6, "dataCursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/miui/gallery/activity/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "*"

    aput-object v4, v2, v3

    const-string v3, "_id IN (%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v12, ","

    .line 695
    invoke-static {v12, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    .line 694
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 691
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 698
    const/4 v9, 0x0

    .line 699
    .local v9, "l":Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask$ProgressEndListener;
    const/4 v10, 0x0

    .line 700
    .local v10, "showTip":Z
    iget-object v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->access$1700(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)Lcom/miui/gallery/cloud/baby/BabyInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->access$1700(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)Lcom/miui/gallery/cloud/baby/BabyInfo;

    move-result-object v1

    iget-boolean v1, v1, Lcom/miui/gallery/cloud/baby/BabyInfo;->mAutoupdate:Z

    if-nez v1, :cond_3

    .line 702
    iget-object v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->mRecommendPhotoDatas:Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->mRecommendPhotoDatas:Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;

    iget v1, v1, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;->totalFaceCountInFaceAlbum:I

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 703
    :cond_2
    const/4 v10, 0x1

    .line 712
    :cond_3
    :goto_1
    move v8, v10

    .line 713
    .local v8, "isShowTip":Z
    new-instance v9, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$5;

    .end local v9    # "l":Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask$ProgressEndListener;
    invoke-direct {v9, p0, v8}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$5;-><init>(Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;Z)V

    .line 740
    .restart local v9    # "l":Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask$ProgressEndListener;
    new-instance v0, Lcom/miui/gallery/model/SendToCloudFolderItem;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    iget-boolean v2, v2, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mIsOtherShareAlbum:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    iget-wide v2, v2, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mAlbumId:J

    .line 742
    invoke-static {v2, v3}, Lcom/miui/gallery/provider/ShareAlbumManager;->getOriginalAlbumId(J)J

    move-result-wide v2

    .line 741
    :goto_2
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    iget-boolean v3, v3, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mIsOtherShareAlbum:Z

    iget-object v4, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    iget-object v4, v4, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mAlbumName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/model/SendToCloudFolderItem;-><init>(ILjava/lang/String;ZLjava/lang/String;Lcom/miui/gallery/cloud/baby/BabyInfo;)V

    .line 745
    .local v0, "cloudFolder":Lcom/miui/gallery/model/SendToCloudFolderItem;
    iget-object v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const/4 v2, 0x0

    const v3, 0x7f0c001c

    .line 746
    invoke-static {v1, v6, v0, v2, v3}, Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask;->instance(Landroid/app/Activity;Landroid/database/Cursor;Lcom/miui/gallery/model/SendToCloudFolderItem;II)Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask;

    move-result-object v11

    .line 747
    .local v11, "task":Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask;
    invoke-virtual {v11, v9}, Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask;->setProgressFinishListener(Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask$ProgressEndListener;)V

    .line 748
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v11, v1}, Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 704
    .end local v0    # "cloudFolder":Lcom/miui/gallery/model/SendToCloudFolderItem;
    .end local v8    # "isShowTip":Z
    .end local v11    # "task":Lcom/miui/gallery/util/baby/CopyFaceAlbumItemsToBabyAlbumTask;
    :cond_4
    iget-object v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mAlbumName:Ljava/lang/String;

    .line 705
    invoke-static {v1}, Lcom/miui/gallery/preference/GalleryPreferences$Baby;->getHasShowAutoUpdateTipWithoutSelectingAll(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 706
    const/4 v10, 0x1

    .line 707
    iget-object v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mAlbumName:Ljava/lang/String;

    .line 708
    invoke-static {v1}, Lcom/miui/gallery/preference/GalleryPreferences$Baby;->setHasShowAutoUpdateTipWithoutSelectingAll(Ljava/lang/String;)V

    goto :goto_1

    .line 742
    .restart local v8    # "isShowTip":Z
    :cond_5
    iget-object v2, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    iget-wide v2, v2, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mAlbumId:J

    goto :goto_2
.end method

.method private onSaveChoosedPeopleAndGo2ChooseFace(Landroid/content/Intent;)V
    .locals 10
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 656
    const-string v0, "local_id_of_album"

    .line 657
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 658
    .local v3, "choosedPeopleLocalId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->access$1700(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)Lcom/miui/gallery/cloud/baby/BabyInfo;

    move-result-object v0

    const-string v1, "server_id_of_album"

    .line 660
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mPeopleId:Ljava/lang/String;

    .line 661
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    iget-boolean v0, v0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mIsOtherShareAlbum:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    iget-wide v0, v0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mAlbumId:J

    .line 663
    invoke-static {v0, v1}, Lcom/miui/gallery/provider/ShareAlbumManager;->getOriginalAlbumId(J)J

    move-result-wide v0

    .line 662
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 665
    .local v7, "thisAlbumId":Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->access$1700(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)Lcom/miui/gallery/cloud/baby/BabyInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    iget-boolean v1, v1, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mIsOtherShareAlbum:Z

    invoke-static {v7, v0, v1}, Lcom/miui/gallery/cloud/baby/BabyAlbumUtils;->saveBabyInfo(Ljava/lang/String;Lcom/miui/gallery/cloud/baby/BabyInfo;Z)V

    .line 668
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 669
    .local v8, "values":Landroid/content/ContentValues;
    const-string v0, "peopleId"

    iget-object v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->access$1700(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)Lcom/miui/gallery/cloud/baby/BabyInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/gallery/cloud/baby/BabyInfo;->mPeopleId:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    .line 671
    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    iget-boolean v0, v0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mIsOtherShareAlbum:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$ShareAlbum;->OTHER_SHARE_URI:Landroid/net/Uri;

    :goto_1
    const-string v2, "%s=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v9, "_id"

    aput-object v9, v5, v6

    const/4 v9, 0x1

    aput-object v7, v5, v9

    .line 675
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 672
    invoke-virtual {v1, v0, v8, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 679
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    iget-object v0, v0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    iget-object v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->access$1700(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)Lcom/miui/gallery/cloud/baby/BabyInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/gallery/cloud/baby/BabyInfo;->mNickName:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    .line 680
    invoke-static {v2}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->access$1700(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)Lcom/miui/gallery/cloud/baby/BabyInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/gallery/cloud/baby/BabyInfo;->mPeopleId:Ljava/lang/String;

    const/4 v5, -0x1

    .line 679
    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/IntentUtil;->pickFace(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;IZ)V

    .line 682
    .end local v7    # "thisAlbumId":Ljava/lang/String;
    .end local v8    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void

    .line 663
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    iget-wide v0, v0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mAlbumId:J

    goto :goto_0

    .line 671
    .restart local v7    # "thisAlbumId":Ljava/lang/String;
    .restart local v8    # "values":Landroid/content/ContentValues;
    :cond_2
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    goto :goto_1
.end method

.method private refreshRecommandBar(Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;)V
    .locals 10
    .param p1, "photoDatas"    # Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 615
    invoke-virtual {p1}, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;->hasNewRecommendation()Z

    move-result v6

    if-nez v6, :cond_0

    .line 616
    invoke-direct {p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->disappearRecommendationView()V

    .line 653
    :goto_0
    return-void

    .line 620
    :cond_0
    iput-object p1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->mRecommendPhotoDatas:Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;

    .line 622
    const/4 v3, 0x0

    .line 623
    .local v3, "tipId":I
    const/4 v0, 0x0

    .line 624
    .local v0, "count":I
    iget-object v6, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    iget-wide v6, v6, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mAlbumId:J

    .line 626
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 625
    invoke-static {v6}, Lcom/miui/gallery/preference/GalleryPreferences$Baby;->getLastClickBabyPhotosRecommandationTime(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    move v1, v4

    .line 627
    .local v1, "firstTimeRecommend":Z
    :goto_1
    if-nez v1, :cond_2

    .line 628
    const v3, 0x7f0e000b

    .line 629
    invoke-virtual {p1}, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;->getRecommendationSize()I

    move-result v0

    .line 634
    :goto_2
    iget-object v6, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    iget-object v6, v6, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v6}, Lcom/miui/gallery/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 635
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    iget-object v5, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    invoke-static {v5}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->access$1700(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)Lcom/miui/gallery/cloud/baby/BabyInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/miui/gallery/cloud/baby/BabyInfo;->mNickName:Ljava/lang/String;

    aput-object v5, v7, v4

    .line 634
    invoke-virtual {v6, v3, v0, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 637
    .local v2, "tip":Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->access$700(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$4;

    invoke-direct {v5, p0, p1}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$4;-><init>(Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;)V

    .line 638
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 651
    iget-object v4, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    invoke-static {v4}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->access$700(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 652
    invoke-direct {p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->displayRecommendationView()V

    goto :goto_0

    .end local v1    # "firstTimeRecommend":Z
    .end local v2    # "tip":Ljava/lang/String;
    :cond_1
    move v1, v5

    .line 625
    goto :goto_1

    .line 631
    .restart local v1    # "firstTimeRecommend":Z
    :cond_2
    const v3, 0x7f0e000c

    .line 632
    invoke-virtual {p1}, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationDatas;->getRecommendationSize()I

    move-result v0

    goto :goto_2
.end method

.method private refreshRecommandBar(Ljava/lang/Boolean;)V
    .locals 6
    .param p1, "yesFindCandidate"    # Ljava/lang/Boolean;

    .prologue
    .line 590
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 591
    invoke-direct {p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->disappearRecommendationView()V

    .line 612
    :goto_0
    return-void

    .line 593
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    const v2, 0x7f0c0081

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    .line 595
    invoke-static {v5}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->access$1700(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)Lcom/miui/gallery/cloud/baby/BabyInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/miui/gallery/cloud/baby/BabyInfo;->mNickName:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 593
    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/activity/BaseActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 596
    .local v0, "tip":Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->access$700(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$3;

    invoke-direct {v2, p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$3;-><init>(Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;)V

    .line 597
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 609
    iget-object v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->access$700(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 610
    invoke-direct {p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->displayRecommendationView()V

    goto :goto_0
.end method

.method private seeIfHasRecommendationPhotoFromFaceAlbum(Landroid/database/Cursor;)V
    .locals 6
    .param p1, "all"    # Landroid/database/Cursor;

    .prologue
    .line 512
    iget-object v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->access$1700(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)Lcom/miui/gallery/cloud/baby/BabyInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 579
    :goto_0
    return-void

    .line 515
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    iget-boolean v1, v1, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mIsOtherShareAlbum:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->access$1700(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)Lcom/miui/gallery/cloud/baby/BabyInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/gallery/cloud/baby/BabyInfo;->mPeopleId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 516
    iget-object v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->mBabyFaceFinder:Lcom/miui/gallery/util/baby/BabyFaceFinder;

    if-nez v1, :cond_1

    .line 517
    new-instance v1, Lcom/miui/gallery/util/baby/BabyFaceFinder;

    invoke-direct {v1}, Lcom/miui/gallery/util/baby/BabyFaceFinder;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->mBabyFaceFinder:Lcom/miui/gallery/util/baby/BabyFaceFinder;

    .line 518
    iget-object v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->mBabyFaceFinder:Lcom/miui/gallery/util/baby/BabyFaceFinder;

    new-instance v2, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$1;-><init>(Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;)V

    .line 519
    invoke-virtual {v1, v2}, Lcom/miui/gallery/util/baby/BabyFaceFinder;->setBabyAlbumsFoundListener(Lcom/miui/gallery/util/baby/BabyFaceFinder$BabyAlbumsFoundListener;)V

    .line 537
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->mBabyFaceFinder:Lcom/miui/gallery/util/baby/BabyFaceFinder;

    iget-object v2, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    iget-wide v2, v2, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mAlbumId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/util/baby/BabyFaceFinder;->startFindFace(Ljava/lang/String;)V

    goto :goto_0

    .line 538
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->access$2000(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    .line 539
    invoke-static {v1}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->access$1700(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)Lcom/miui/gallery/cloud/baby/BabyInfo;

    move-result-object v1

    iget-boolean v1, v1, Lcom/miui/gallery/cloud/baby/BabyInfo;->mAutoupdate:Z

    if-nez v1, :cond_6

    .line 540
    iget-object v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->mBabyAlbumRecommendationFinder:Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;

    if-nez v1, :cond_3

    .line 541
    new-instance v1, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;

    iget-object v2, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    .line 542
    invoke-static {v2}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->access$2000(Lcom/miui/gallery/ui/BabyAlbumDetailFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->mBabyAlbumRecommendationFinder:Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;

    .line 543
    iget-object v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->mBabyAlbumRecommendationFinder:Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;

    new-instance v2, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$2;

    invoke-direct {v2, p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper$2;-><init>(Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;)V

    .line 544
    invoke-virtual {v1, v2}, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;->setRecommendationFoundListener(Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder$RecommendationFoundListener;)V

    .line 562
    :cond_3
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->mAllBabyAlbumPhoto:Landroid/util/SparseArray;

    .line 563
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_5

    .line 564
    const-string/jumbo v1, "title"

    .line 566
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 565
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 567
    .local v0, "title":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 568
    iget-object v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->mAllBabyAlbumPhoto:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 563
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 573
    .end local v0    # "title":Ljava/lang/String;
    :cond_5
    iget-object v1, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->mBabyAlbumRecommendationFinder:Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;

    iget-object v2, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->mAllBabyAlbumPhoto:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->this$0:Lcom/miui/gallery/ui/BabyAlbumDetailFragment;

    iget-wide v4, v3, Lcom/miui/gallery/ui/BabyAlbumDetailFragment;->mAlbumId:J

    .line 574
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 573
    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/util/baby/BabyAlbumRecommendationFinder;->findRecommendation(Landroid/util/SparseArray;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 576
    :cond_6
    invoke-direct {p0}, Lcom/miui/gallery/ui/BabyAlbumDetailFragment$MyRecommendationPhotoHelper;->disappearRecommendationView()V

    goto/16 :goto_0
.end method
