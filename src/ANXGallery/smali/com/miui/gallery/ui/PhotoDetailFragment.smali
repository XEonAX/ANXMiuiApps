.class public Lcom/miui/gallery/ui/PhotoDetailFragment;
.super Lcom/miui/gallery/ui/BaseFragment;
.source "PhotoDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/PhotoDetailFragment$FlashState;,
        Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoader;,
        Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoaderCallBack;
    }
.end annotation


# instance fields
.field private mAddressFuture:Lcom/miui/gallery/threadpool/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/threadpool/Future",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation
.end field

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContentContainer:Landroid/view/View;

.field private mDetailInfo:Lcom/miui/gallery/model/PhotoDetailInfo;

.field private mFileInfoItem:Landroid/view/View;

.field private mFileInfoSub:Landroid/widget/TextView;

.field private mFileInfoTitle:Landroid/widget/TextView;

.field private mItem:Lcom/miui/gallery/model/BaseDataItem;

.field private mLoaderCallBack:Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoaderCallBack;

.field private mLocation:Landroid/widget/TextView;

.field private mLocationItem:Landroid/view/View;

.field private mNeedConfirmPassword:Z

.field private mParamsItem:Landroid/view/View;

.field private mPath:Landroid/widget/TextView;

.field private mPathItem:Landroid/view/View;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mScreenshotPackageInfo:Landroid/widget/TextView;

.field private mScreenshotPackageItem:Landroid/view/View;

.field private mTakenParamsSub:Landroid/widget/TextView;

.field private mTakenParamsThird:Landroid/widget/TextView;

.field private mTakenParamsTitle:Landroid/widget/TextView;

.field private mTimeItem:Landroid/view/View;

.field private mTimeSub:Landroid/widget/TextView;

.field private mTimeTitle:Landroid/widget/TextView;

.field private mTipNoDownload:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/miui/gallery/ui/BaseFragment;-><init>()V

    .line 115
    new-instance v0, Lcom/miui/gallery/ui/PhotoDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoDetailFragment$1;-><init>(Lcom/miui/gallery/ui/PhotoDetailFragment;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mClickListener:Landroid/view/View$OnClickListener;

    .line 638
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/PhotoDetailFragment;)Lcom/miui/gallery/model/PhotoDetailInfo;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoDetailFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mDetailInfo:Lcom/miui/gallery/model/PhotoDetailInfo;

    return-object v0
.end method

.method static synthetic access$002(Lcom/miui/gallery/ui/PhotoDetailFragment;Lcom/miui/gallery/model/PhotoDetailInfo;)Lcom/miui/gallery/model/PhotoDetailInfo;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoDetailFragment;
    .param p1, "x1"    # Lcom/miui/gallery/model/PhotoDetailInfo;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mDetailInfo:Lcom/miui/gallery/model/PhotoDetailInfo;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/PhotoDetailFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoDetailFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mLocation:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/PhotoDetailFragment;)Lcom/miui/gallery/model/BaseDataItem;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoDetailFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mItem:Lcom/miui/gallery/model/BaseDataItem;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/ui/PhotoDetailFragment;Lcom/miui/gallery/model/PhotoDetailInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoDetailFragment;
    .param p1, "x1"    # Lcom/miui/gallery/model/PhotoDetailInfo;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoDetailFragment;->bindDetail(Lcom/miui/gallery/model/PhotoDetailInfo;)V

    return-void
.end method

.method private bindDetail(Lcom/miui/gallery/model/PhotoDetailInfo;)V
    .locals 3
    .param p1, "detailInfo"    # Lcom/miui/gallery/model/PhotoDetailInfo;

    .prologue
    .line 445
    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoDetailFragment;->bindTime(Lcom/miui/gallery/model/PhotoDetailInfo;)V

    .line 446
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoDetailFragment;->bindFileInfo(Lcom/miui/gallery/model/PhotoDetailInfo;)V

    .line 447
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoDetailFragment;->bindNotDownloadTip(Lcom/miui/gallery/model/PhotoDetailInfo;)V

    .line 448
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoDetailFragment;->bindTakenParams(Lcom/miui/gallery/model/PhotoDetailInfo;)V

    .line 449
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoDetailFragment;->bindPath(Lcom/miui/gallery/model/PhotoDetailInfo;)V

    .line 450
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoDetailFragment;->bindLocation(Lcom/miui/gallery/model/PhotoDetailInfo;)V

    .line 451
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoDetailFragment;->bindScreenshotPackageInfo(Lcom/miui/gallery/model/PhotoDetailInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mContentContainer:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 456
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mProgress:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 457
    return-void

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private bindFileInfo(Lcom/miui/gallery/model/PhotoDetailInfo;)V
    .locals 8
    .param p1, "detailInfo"    # Lcom/miui/gallery/model/PhotoDetailInfo;

    .prologue
    .line 279
    const/4 v2, 0x0

    .line 281
    .local v2, "isShow":Z
    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Lcom/miui/gallery/model/PhotoDetailInfo;->getDetail(I)Ljava/lang/Object;

    move-result-object v3

    .line 282
    .local v3, "obj":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 283
    const/4 v2, 0x1

    .line 284
    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mFileInfoTitle:Landroid/widget/TextView;

    check-cast v3, Ljava/lang/String;

    .end local v3    # "obj":Ljava/lang/Object;
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Lcom/miui/gallery/model/PhotoDetailInfo;->getDetail(I)Ljava/lang/Object;

    move-result-object v3

    .line 289
    .restart local v3    # "obj":Ljava/lang/Object;
    if-eqz v3, :cond_1

    .line 290
    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    check-cast v3, Ljava/lang/Long;

    .end local v3    # "obj":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/miui/gallery/util/FormatUtil;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    :cond_1
    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Lcom/miui/gallery/model/PhotoDetailInfo;->getDetail(I)Ljava/lang/Object;

    move-result-object v4

    .line 294
    .local v4, "width":Ljava/lang/Object;
    const/4 v5, 0x5

    invoke-virtual {p1, v5}, Lcom/miui/gallery/model/PhotoDetailInfo;->getDetail(I)Ljava/lang/Object;

    move-result-object v1

    .line 295
    .local v1, "height":Ljava/lang/Object;
    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    .line 296
    invoke-direct {p0, v4, v1}, Lcom/miui/gallery/ui/PhotoDetailFragment;->genPixels(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    :cond_2
    const/4 v5, 0x7

    invoke-virtual {p1, v5}, Lcom/miui/gallery/model/PhotoDetailInfo;->getDetail(I)Ljava/lang/Object;

    move-result-object v3

    .line 300
    .restart local v3    # "obj":Ljava/lang/Object;
    if-eqz v3, :cond_3

    .line 301
    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    check-cast v3, Ljava/lang/Integer;

    .end local v3    # "obj":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Lcom/miui/gallery/util/FormatUtil;->formatDuration(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 305
    const/4 v2, 0x1

    .line 306
    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mFileInfoSub:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mFileInfoSub:Landroid/widget/TextView;

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/miui/gallery/ui/PhotoDetailFragment;->setItemVisible(Landroid/view/View;Z)V

    .line 312
    :goto_0
    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mFileInfoItem:Landroid/view/View;

    invoke-direct {p0, v5, v2}, Lcom/miui/gallery/ui/PhotoDetailFragment;->setItemVisible(Landroid/view/View;Z)V

    .line 313
    return-void

    .line 309
    :cond_4
    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mFileInfoSub:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/miui/gallery/ui/PhotoDetailFragment;->setItemVisible(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private bindLocation(Lcom/miui/gallery/model/PhotoDetailInfo;)V
    .locals 8
    .param p1, "detailInfo"    # Lcom/miui/gallery/model/PhotoDetailInfo;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 411
    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Lcom/miui/gallery/model/PhotoDetailInfo;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    .line 412
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 413
    check-cast v2, [D

    .end local v2    # "obj":Ljava/lang/Object;
    move-object v0, v2

    check-cast v0, [D

    .line 414
    .local v0, "coordidate":[D
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoDetailFragment;->genLocation([D)Ljava/lang/String;

    move-result-object v1

    .line 415
    .local v1, "location":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 416
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mLocation:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mLocationItem:Landroid/view/View;

    invoke-direct {p0, v3, v6}, Lcom/miui/gallery/ui/PhotoDetailFragment;->setItemVisible(Landroid/view/View;Z)V

    .line 418
    aget-wide v4, v0, v4

    aget-wide v6, v0, v6

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/miui/gallery/ui/PhotoDetailFragment;->requestAddress(DD)V

    .line 425
    .end local v0    # "coordidate":[D
    .end local v1    # "location":Ljava/lang/String;
    :goto_0
    return-void

    .line 420
    .restart local v0    # "coordidate":[D
    .restart local v1    # "location":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mLocationItem:Landroid/view/View;

    invoke-direct {p0, v3, v4}, Lcom/miui/gallery/ui/PhotoDetailFragment;->setItemVisible(Landroid/view/View;Z)V

    goto :goto_0

    .line 423
    .end local v0    # "coordidate":[D
    .end local v1    # "location":Ljava/lang/String;
    .restart local v2    # "obj":Ljava/lang/Object;
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mLocationItem:Landroid/view/View;

    invoke-direct {p0, v3, v4}, Lcom/miui/gallery/ui/PhotoDetailFragment;->setItemVisible(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private bindNotDownloadTip(Lcom/miui/gallery/model/PhotoDetailInfo;)V
    .locals 3
    .param p1, "detailInfo"    # Lcom/miui/gallery/model/PhotoDetailInfo;

    .prologue
    .line 316
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/miui/gallery/model/PhotoDetailInfo;->getDetail(I)Ljava/lang/Object;

    move-result-object v0

    .line 317
    .local v0, "obj":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 318
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mTipNoDownload:Landroid/widget/TextView;

    check-cast v0, Ljava/lang/String;

    .end local v0    # "obj":Ljava/lang/Object;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mTipNoDownload:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/miui/gallery/ui/PhotoDetailFragment;->setItemVisible(Landroid/view/View;Z)V

    .line 323
    :goto_0
    return-void

    .line 321
    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mTipNoDownload:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/miui/gallery/ui/PhotoDetailFragment;->setItemVisible(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private bindPath(Lcom/miui/gallery/model/PhotoDetailInfo;)V
    .locals 5
    .param p1, "detailInfo"    # Lcom/miui/gallery/model/PhotoDetailInfo;

    .prologue
    .line 392
    const/4 v0, 0x0

    .line 393
    .local v0, "clickListener":Landroid/view/View$OnClickListener;
    const v1, 0x7f100075

    .line 394
    .local v1, "colorRes":I
    const/16 v3, 0xc9

    invoke-virtual {p1, v3}, Lcom/miui/gallery/model/PhotoDetailInfo;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    .line 395
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 396
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mPath:Landroid/widget/TextView;

    check-cast v2, Ljava/lang/String;

    .end local v2    # "obj":Ljava/lang/Object;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mPathItem:Landroid/view/View;

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/miui/gallery/ui/PhotoDetailFragment;->setItemVisible(Landroid/view/View;Z)V

    .line 398
    const/16 v3, 0x6d

    invoke-virtual {p1, v3}, Lcom/miui/gallery/model/PhotoDetailInfo;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    .line 399
    .restart local v2    # "obj":Ljava/lang/Object;
    if-eqz v2, :cond_0

    move-object v3, v2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 400
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mClickListener:Landroid/view/View$OnClickListener;

    .line 401
    const v1, 0x7f100072

    .line 406
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mPath:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mPath:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 408
    return-void

    .line 404
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mPathItem:Landroid/view/View;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/miui/gallery/ui/PhotoDetailFragment;->setItemVisible(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private bindScreenshotPackageInfo(Lcom/miui/gallery/model/PhotoDetailInfo;)V
    .locals 7
    .param p1, "detailInfo"    # Lcom/miui/gallery/model/PhotoDetailInfo;

    .prologue
    const/4 v6, 0x0

    .line 428
    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Lcom/miui/gallery/model/PhotoDetailInfo;->getDetail(I)Ljava/lang/Object;

    move-result-object v1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    .line 429
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mItem:Lcom/miui/gallery/model/BaseDataItem;

    if-eqz v2, :cond_1

    .line 430
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/miui/gallery/model/PhotoDetailInfo;->getDetail(I)Ljava/lang/Object;

    move-result-object v0

    .line 431
    .local v0, "name":Ljava/lang/Object;
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v2}, Lcom/miui/gallery/model/BaseDataItem;->getLocalGroupId()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/String;

    .end local v0    # "name":Ljava/lang/Object;
    const-string v2, "Screenshot"

    .line 432
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 433
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mScreenshotPackageInfo:Landroid/widget/TextView;

    check-cast v1, Ljava/lang/String;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mScreenshotPackageItem:Landroid/view/View;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/miui/gallery/ui/PhotoDetailFragment;->setItemVisible(Landroid/view/View;Z)V

    .line 441
    :goto_0
    return-void

    .line 436
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mScreenshotPackageItem:Landroid/view/View;

    invoke-direct {p0, v2, v6}, Lcom/miui/gallery/ui/PhotoDetailFragment;->setItemVisible(Landroid/view/View;Z)V

    goto :goto_0

    .line 439
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mScreenshotPackageItem:Landroid/view/View;

    invoke-direct {p0, v2, v6}, Lcom/miui/gallery/ui/PhotoDetailFragment;->setItemVisible(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private bindTakenParams(Lcom/miui/gallery/model/PhotoDetailInfo;)V
    .locals 7
    .param p1, "detailInfo"    # Lcom/miui/gallery/model/PhotoDetailInfo;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 326
    const/4 v1, 0x0

    .line 327
    .local v1, "isShow":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v3, 0x65

    invoke-virtual {p1, v3}, Lcom/miui/gallery/model/PhotoDetailInfo;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    .line 330
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 331
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 333
    :cond_0
    const/16 v3, 0x64

    invoke-virtual {p1, v3}, Lcom/miui/gallery/model/PhotoDetailInfo;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    .line 334
    if-eqz v2, :cond_1

    .line 335
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 337
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_7

    .line 338
    const/4 v1, 0x1

    .line 339
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mTakenParamsTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 348
    const/16 v3, 0x69

    invoke-virtual {p1, v3}, Lcom/miui/gallery/model/PhotoDetailInfo;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    .line 349
    if-eqz v2, :cond_2

    .line 350
    check-cast v2, Ljava/lang/String;

    .end local v2    # "obj":Ljava/lang/Object;
    invoke-direct {p0, v2}, Lcom/miui/gallery/ui/PhotoDetailFragment;->genAperture(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    :cond_2
    const/16 v3, 0x6b

    invoke-virtual {p1, v3}, Lcom/miui/gallery/model/PhotoDetailInfo;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    .line 354
    .restart local v2    # "obj":Ljava/lang/Object;
    if-eqz v2, :cond_3

    .line 355
    check-cast v2, Ljava/lang/String;

    .end local v2    # "obj":Ljava/lang/Object;
    invoke-direct {p0, v2}, Lcom/miui/gallery/ui/PhotoDetailFragment;->genExposureTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    :cond_3
    const/16 v3, 0x6c

    invoke-virtual {p1, v3}, Lcom/miui/gallery/model/PhotoDetailInfo;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    .line 359
    .restart local v2    # "obj":Ljava/lang/Object;
    if-eqz v2, :cond_4

    .line 360
    invoke-direct {p0, v2}, Lcom/miui/gallery/ui/PhotoDetailFragment;->genISO(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_8

    .line 363
    const/4 v1, 0x1

    .line 364
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mTakenParamsSub:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mTakenParamsSub:Landroid/widget/TextView;

    invoke-direct {p0, v3, v6}, Lcom/miui/gallery/ui/PhotoDetailFragment;->setItemVisible(Landroid/view/View;Z)V

    .line 370
    :goto_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 372
    const/16 v3, 0x67

    invoke-virtual {p1, v3}, Lcom/miui/gallery/model/PhotoDetailInfo;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    .line 373
    if-eqz v2, :cond_5

    .line 374
    invoke-direct {p0, v2}, Lcom/miui/gallery/ui/PhotoDetailFragment;->genFocalLength(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    :cond_5
    const/16 v3, 0x66

    invoke-virtual {p1, v3}, Lcom/miui/gallery/model/PhotoDetailInfo;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    .line 378
    if-eqz v2, :cond_6

    move-object v3, v2

    .line 379
    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/miui/gallery/ui/PhotoDetailFragment;->genFlashFired(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_9

    .line 382
    const/4 v1, 0x1

    .line 383
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mTakenParamsThird:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mTakenParamsThird:Landroid/widget/TextView;

    invoke-direct {p0, v3, v6}, Lcom/miui/gallery/ui/PhotoDetailFragment;->setItemVisible(Landroid/view/View;Z)V

    .line 388
    :goto_1
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mParamsItem:Landroid/view/View;

    invoke-direct {p0, v3, v1}, Lcom/miui/gallery/ui/PhotoDetailFragment;->setItemVisible(Landroid/view/View;Z)V

    .line 389
    :goto_2
    return-void

    .line 342
    :cond_7
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mParamsItem:Landroid/view/View;

    invoke-direct {p0, v3, v5}, Lcom/miui/gallery/ui/PhotoDetailFragment;->setItemVisible(Landroid/view/View;Z)V

    goto :goto_2

    .line 367
    :cond_8
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mTakenParamsSub:Landroid/widget/TextView;

    invoke-direct {p0, v3, v5}, Lcom/miui/gallery/ui/PhotoDetailFragment;->setItemVisible(Landroid/view/View;Z)V

    goto :goto_0

    .line 386
    :cond_9
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mTakenParamsThird:Landroid/widget/TextView;

    invoke-direct {p0, v3, v5}, Lcom/miui/gallery/ui/PhotoDetailFragment;->setItemVisible(Landroid/view/View;Z)V

    goto :goto_1
.end method

.method private bindTime(Lcom/miui/gallery/model/PhotoDetailInfo;)V
    .locals 8
    .param p1, "detailInfo"    # Lcom/miui/gallery/model/PhotoDetailInfo;

    .prologue
    const/4 v7, 0x1

    .line 259
    invoke-virtual {p1, v7}, Lcom/miui/gallery/model/PhotoDetailInfo;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    .line 260
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 261
    check-cast v2, Ljava/lang/Long;

    .end local v2    # "obj":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 262
    .local v4, "time":J
    const/16 v1, 0x380

    .line 264
    .local v1, "flag":I
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mTimeTitle:Landroid/widget/TextView;

    invoke-static {v4, v5, v1}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v1, 0x400

    .line 267
    invoke-static {v4, v5, v1}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    const/16 v1, 0x2c

    .line 270
    const-string v3, "    "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v4, v5, v1}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mTimeSub:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mTimeItem:Landroid/view/View;

    invoke-direct {p0, v3, v7}, Lcom/miui/gallery/ui/PhotoDetailFragment;->setItemVisible(Landroid/view/View;Z)V

    .line 276
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "flag":I
    .end local v4    # "time":J
    :goto_0
    return-void

    .line 274
    .restart local v2    # "obj":Ljava/lang/Object;
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mTimeItem:Landroid/view/View;

    const/4 v6, 0x0

    invoke-direct {p0, v3, v6}, Lcom/miui/gallery/ui/PhotoDetailFragment;->setItemVisible(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private cancelAddressRequest()V
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mAddressFuture:Lcom/miui/gallery/threadpool/Future;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mAddressFuture:Lcom/miui/gallery/threadpool/Future;

    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->cancel()V

    .line 528
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mAddressFuture:Lcom/miui/gallery/threadpool/Future;

    .line 530
    :cond_0
    return-void
.end method

.method private finishActivity(I)V
    .locals 1
    .param p1, "resultCode"    # I

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 192
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 193
    return-void
.end method

.method private genAperture(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 213
    const-string v0, "0+?$"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 214
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 217
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "f/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private genExposureTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 222
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 223
    .local v2, "time":D
    cmpg-double v4, v2, v10

    if-gez v4, :cond_1

    .line 224
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "1/%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    div-double v8, v10, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 236
    .end local v2    # "time":D
    :cond_0
    :goto_0
    return-object p1

    .line 226
    .restart local v2    # "time":D
    :cond_1
    double-to-int v1, v2

    .line 227
    .local v1, "integer":I
    int-to-double v4, v1

    sub-double/2addr v2, v4

    .line 228
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 229
    const-wide v4, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v4, v2, v4

    if-lez v4, :cond_0

    .line 230
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, " 1/%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    div-double/2addr v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 233
    .end local v1    # "integer":I
    .end local v2    # "time":D
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method private genFlashFired(I)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 248
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v0, Lcom/miui/gallery/ui/PhotoDetailFragment$FlashState;

    invoke-direct {v0, p1}, Lcom/miui/gallery/ui/PhotoDetailFragment$FlashState;-><init>(I)V

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoDetailFragment$FlashState;->isFlashFired()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c0234

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f0c0233

    goto :goto_0
.end method

.method private genFocalLength(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private genISO(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ISO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private genLocation([D)Ljava/lang/String;
    .locals 6
    .param p1, "coordidate"    # [D

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 252
    aget-wide v0, p1, v4

    aget-wide v2, p1, v5

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/data/LocationUtil;->isValidateCoordinate(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v2, p1, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v2, p1, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private genPixels(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "width"    # Ljava/lang/Object;
    .param p2, "height"    # Ljava/lang/Object;

    .prologue
    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "px"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isNeedConfirmPassword()Z
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->isSecret()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mNeedConfirmPassword:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private requestAddress(DD)V
    .locals 7
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 468
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoDetailFragment;->cancelAddressRequest()V

    .line 469
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->canConnectNetwork()Z

    move-result v0

    if-nez v0, :cond_0

    .line 470
    const-string v0, "PhotoDetailFragment"

    const-string v1, "Abort request address task due to lack of CTA network connection permission"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    :goto_0
    return-void

    .line 473
    :cond_0
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getNetworkPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v6

    new-instance v0, Lcom/miui/gallery/ui/PhotoDetailFragment$2;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/ui/PhotoDetailFragment$2;-><init>(Lcom/miui/gallery/ui/PhotoDetailFragment;DD)V

    new-instance v1, Lcom/miui/gallery/ui/PhotoDetailFragment$3;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/PhotoDetailFragment$3;-><init>(Lcom/miui/gallery/ui/PhotoDetailFragment;)V

    invoke-virtual {v6, v0, v1}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/threadpool/FutureListener;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mAddressFuture:Lcom/miui/gallery/threadpool/Future;

    goto :goto_0
.end method

.method private setItemVisible(Landroid/view/View;Z)V
    .locals 1
    .param p1, "item"    # Landroid/view/View;
    .param p2, "visible"    # Z

    .prologue
    .line 460
    if-eqz p2, :cond_0

    .line 461
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 465
    :goto_0
    return-void

    .line 463
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setRootViewClickable(Landroid/view/View;)V
    .locals 3
    .param p1, "container"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 196
    if-nez p1, :cond_0

    .line 206
    :goto_0
    return-void

    .line 200
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 201
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 202
    check-cast v0, Landroid/view/View;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 204
    .restart local v0    # "parent":Landroid/view/ViewParent;
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 564
    const-string v0, "photo_info"

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 549
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 550
    new-instance v0, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoaderCallBack;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoaderCallBack;-><init>(Lcom/miui/gallery/ui/PhotoDetailFragment;Lcom/miui/gallery/ui/PhotoDetailFragment$1;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mLoaderCallBack:Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoaderCallBack;

    .line 551
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoDetailFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const-string v1, "PhotoDetailFragment"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mLoaderCallBack:Lcom/miui/gallery/ui/PhotoDetailFragment$DetailLoaderCallBack;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 553
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->isSecret()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 556
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 173
    packed-switch p1, :pswitch_data_0

    .line 182
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/ui/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 183
    return-void

    .line 175
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 176
    invoke-direct {p0, p2}, Lcom/miui/gallery/ui/PhotoDetailFragment;->finishActivity(I)V

    goto :goto_0

    .line 178
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mNeedConfirmPassword:Z

    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 186
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoDetailFragment;->finishActivity(I)V

    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 534
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseFragment;->onDestroy()V

    .line 535
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoDetailFragment;->cancelAddressRequest()V

    .line 536
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/miui/gallery/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 83
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v2, "photo_detail_target"

    .line 84
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/model/BaseDataItem;

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mItem:Lcom/miui/gallery/model/BaseDataItem;

    if-nez v2, :cond_1

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoDetailFragment;->finish()V

    .line 87
    :cond_1
    invoke-direct {p0, p2}, Lcom/miui/gallery/ui/PhotoDetailFragment;->setRootViewClickable(Landroid/view/View;)V

    .line 88
    const v2, 0x7f0400ef

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 89
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f120218

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mTimeItem:Landroid/view/View;

    .line 90
    const v2, 0x7f12021a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mTimeTitle:Landroid/widget/TextView;

    .line 91
    const v2, 0x7f12021b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mTimeSub:Landroid/widget/TextView;

    .line 92
    const v2, 0x7f12021c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mFileInfoItem:Landroid/view/View;

    .line 93
    const v2, 0x7f12021e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mFileInfoTitle:Landroid/widget/TextView;

    .line 94
    const v2, 0x7f12021f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mTipNoDownload:Landroid/widget/TextView;

    .line 95
    const v2, 0x7f120220

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mFileInfoSub:Landroid/widget/TextView;

    .line 96
    const v2, 0x7f120221

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mParamsItem:Landroid/view/View;

    .line 97
    const v2, 0x7f120223

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mTakenParamsTitle:Landroid/widget/TextView;

    .line 98
    const v2, 0x7f120224

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mTakenParamsSub:Landroid/widget/TextView;

    .line 99
    const v2, 0x7f120225

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mTakenParamsThird:Landroid/widget/TextView;

    .line 100
    const v2, 0x7f120226

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mPathItem:Landroid/view/View;

    .line 101
    const v2, 0x7f120228

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mPath:Landroid/widget/TextView;

    .line 102
    const v2, 0x7f120229

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mLocationItem:Landroid/view/View;

    .line 103
    const v2, 0x7f12022b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mLocation:Landroid/widget/TextView;

    .line 104
    const v2, 0x7f1201e9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mContentContainer:Landroid/view/View;

    .line 105
    const v2, 0x7f120017

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mProgress:Landroid/widget/ProgressBar;

    .line 106
    const v2, 0x7f12022c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mScreenshotPackageItem:Landroid/view/View;

    .line 107
    const v2, 0x7f12022e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mScreenshotPackageInfo:Landroid/widget/TextView;

    .line 109
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mLocation:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    return-object v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 540
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 541
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoDetailFragment;->finish()V

    .line 542
    const/4 v0, 0x1

    .line 544
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseFragment;->onResume()V

    .line 156
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoDetailFragment;->isNeedConfirmPassword()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mNeedConfirmPassword:Z

    .line 159
    const/16 v0, 0x1b

    invoke-static {p0, v0}, Lcom/miui/privacy/LockSettingsHelper;->startAuthenticatePasswordActivity(Landroid/app/Fragment;I)V

    .line 163
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoDetailFragment;->mNeedConfirmPassword:Z

    .line 168
    invoke-super {p0}, Lcom/miui/gallery/ui/BaseFragment;->onStop()V

    .line 169
    return-void
.end method

.method protected useImageLoader()Z
    .locals 1

    .prologue
    .line 560
    const/4 v0, 0x0

    return v0
.end method
