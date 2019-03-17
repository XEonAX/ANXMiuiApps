.class public abstract Lcom/miui/gallery/ui/MicroThumbGridItem;
.super Landroid/widget/RelativeLayout;
.source "MicroThumbGridItem.java"

# interfaces
.implements Lcom/miui/gallery/ui/CheckableView;
.implements Lcom/miui/gallery/widget/editwrapper/PickAnimationHelper$BackgroundImageViewable;
.implements Lcom/miui/gallery/widget/editwrapper/PickAnimationHelper$ShowNumberWhenPicking;


# instance fields
.field private mBottomIndicatorContainer:Landroid/view/View;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCheckBoxContainer:Landroid/view/View;

.field private mFavoriteIndicator:Landroid/view/View;

.field protected mImageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

.field protected mImageSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

.field protected mImageView:Landroid/widget/ImageView;

.field private mIsSimilarBestImage:Z

.field private mItemId:J

.field private mItemPath:Ljava/lang/String;

.field private mItemStub:Landroid/view/ViewStub;

.field private mLastSyncId:J

.field private mMask:Landroid/widget/ImageView;

.field private mPickingNumberIndicator:Landroid/widget/TextView;

.field private mSimilarBestMark:Landroid/widget/ImageView;

.field private mSyncIndicator:Landroid/widget/ImageView;

.field private mSyncState:I

.field private mTopIndicatorContainer:Landroid/view/View;

.field private mTypeIndicator:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    const v0, 0x7fffffff

    iput v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSyncState:I

    .line 68
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mLastSyncId:J

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mItemPath:Ljava/lang/String;

    .line 74
    return-void
.end method

.method private checkStubInflate()V
    .locals 2

    .prologue
    .line 479
    iget-object v1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mItemStub:Landroid/view/ViewStub;

    if-nez v1, :cond_0

    .line 491
    :goto_0
    return-void

    .line 482
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mItemStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 483
    .local v0, "viewStub":Landroid/view/View;
    const v1, 0x7f1201ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mMask:Landroid/widget/ImageView;

    .line 484
    const v1, 0x1020001

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 485
    const v1, 0x7f1201af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mCheckBoxContainer:Landroid/view/View;

    .line 486
    const v1, 0x7f1200e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSyncIndicator:Landroid/widget/ImageView;

    .line 487
    const v1, 0x7f1201ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mTopIndicatorContainer:Landroid/view/View;

    .line 488
    const v1, 0x7f1201ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mPickingNumberIndicator:Landroid/widget/TextView;

    .line 489
    const v1, 0x7f1201ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSimilarBestMark:Landroid/widget/ImageView;

    .line 490
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mItemStub:Landroid/view/ViewStub;

    goto :goto_0
.end method

.method private static displaySyncableState(I)Z
    .locals 1
    .param p0, "displayLogic"    # I

    .prologue
    .line 258
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static displaySyncedState(I)Z
    .locals 1
    .param p0, "displayLogic"    # I

    .prologue
    .line 250
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static displaySyncingState(I)Z
    .locals 1
    .param p0, "displayLogic"    # I

    .prologue
    .line 254
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static displayUnSyncableState(I)Z
    .locals 1
    .param p0, "displayLogic"    # I

    .prologue
    .line 262
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInCheckMode()Z
    .locals 2

    .prologue
    .line 235
    iget-object v1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mCheckBoxContainer:Landroid/view/View;

    if-nez v1, :cond_0

    const/16 v0, 0x8

    .line 236
    .local v0, "visibility":I
    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 235
    .end local v0    # "visibility":I
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mCheckBoxContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    goto :goto_0

    .line 236
    .restart local v0    # "visibility":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private needRefreshSyncIndicator(JII)Z
    .locals 7
    .param p1, "id"    # J
    .param p3, "newState"    # I
    .param p4, "displayLogic"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 284
    iget-wide v4, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mLastSyncId:J

    cmp-long v3, v4, p1

    if-eqz v3, :cond_1

    .line 285
    const v2, 0x7fffffff

    iput v2, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSyncState:I

    .line 294
    :cond_0
    :goto_0
    return v1

    .line 289
    :cond_1
    iget v3, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSyncState:I

    if-ne v3, p3, :cond_0

    .line 293
    iget-object v3, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSyncIndicator:Landroid/widget/ImageView;

    if-nez v3, :cond_2

    const/16 v0, 0x8

    .line 294
    .local v0, "visibility":I
    :goto_1
    invoke-direct {p0, p3, p4}, Lcom/miui/gallery/ui/MicroThumbGridItem;->needShowSyncIndicator(II)Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v0, :cond_0

    move v1, v2

    goto :goto_0

    .line 293
    .end local v0    # "visibility":I
    :cond_2
    iget-object v3, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSyncIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    goto :goto_1

    .line 294
    .restart local v0    # "visibility":I
    :cond_3
    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private needShowSyncIndicator(II)Z
    .locals 1
    .param p1, "syncState"    # I
    .param p2, "displayLogic"    # I

    .prologue
    .line 266
    packed-switch p1, :pswitch_data_0

    .line 278
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 269
    :pswitch_0
    invoke-static {p2}, Lcom/miui/gallery/ui/MicroThumbGridItem;->displaySyncedState(I)Z

    move-result v0

    goto :goto_0

    .line 271
    :pswitch_1
    invoke-static {p2}, Lcom/miui/gallery/ui/MicroThumbGridItem;->displaySyncingState(I)Z

    move-result v0

    goto :goto_0

    .line 273
    :pswitch_2
    invoke-static {p2}, Lcom/miui/gallery/ui/MicroThumbGridItem;->displaySyncableState(I)Z

    move-result v0

    goto :goto_0

    .line 275
    :pswitch_3
    invoke-static {p2}, Lcom/miui/gallery/ui/MicroThumbGridItem;->displayUnSyncableState(I)Z

    move-result v0

    goto :goto_0

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private needShowSyncIndicator(Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;)Z
    .locals 2
    .param p1, "scene"    # Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;

    .prologue
    const/4 v0, 0x1

    .line 240
    sget-object v1, Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;->SCENE_ALWAYS:Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;

    if-ne p1, v1, :cond_1

    .line 246
    :cond_0
    :goto_0
    return v0

    .line 243
    :cond_1
    sget-object v1, Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;->SCENE_IN_CHECK_MODE:Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;

    if-ne p1, v1, :cond_2

    invoke-direct {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->isInCheckMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 246
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setSyncIndicatorVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 378
    if-nez p1, :cond_1

    .line 379
    invoke-direct {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->checkStubInflate()V

    .line 380
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSyncIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 384
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->updateTopIndicatorBg()V

    .line 385
    return-void

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSyncIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSyncIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setTypeIndicatorVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 423
    if-nez p1, :cond_1

    .line 424
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mTypeIndicator:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 428
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->updateBottomIndicatorBg()V

    .line 429
    return-void

    .line 425
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mTypeIndicator:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mTypeIndicator:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateSyncIndicator(IILandroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "visibility"    # I
    .param p2, "resId"    # I
    .param p3, "animation"    # Landroid/view/animation/Animation;
    .param p4, "bgAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 397
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSyncIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    .line 398
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->checkStubInflate()V

    .line 399
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSyncIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 401
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/MicroThumbGridItem;->setSyncIndicatorVisibility(I)V

    .line 403
    if-eqz p3, :cond_4

    .line 404
    invoke-direct {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->checkStubInflate()V

    .line 405
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSyncIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 412
    :cond_2
    :goto_0
    if-eqz p4, :cond_5

    .line 413
    invoke-direct {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->checkStubInflate()V

    .line 414
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mTopIndicatorContainer:Landroid/view/View;

    invoke-virtual {v0, p4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 420
    :cond_3
    :goto_1
    return-void

    .line 407
    :cond_4
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSyncIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 408
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSyncIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    goto :goto_0

    .line 416
    :cond_5
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mTopIndicatorContainer:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 417
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mTopIndicatorContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_1
.end method


# virtual methods
.method public bindFavoriteIndicator(Z)V
    .locals 1
    .param p1, "showIndicator"    # Z

    .prologue
    .line 231
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->isInCheckMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->updateFavoriteIndicatorVisibility(I)V

    .line 232
    return-void

    .line 231
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public bindImage(JLjava/lang/String;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "localPath"    # Ljava/lang/String;
    .param p4, "downloadUri"    # Landroid/net/Uri;
    .param p5, "downloadType"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p6, "displayImageOptions"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 197
    iput-wide p1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mItemId:J

    .line 198
    iput-object p3, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mItemPath:Ljava/lang/String;

    .line 199
    iget-object v3, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mImageView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mImageSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-object v0, p3

    move-object v1, p4

    move-object v2, p5

    move-object v4, p6

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/util/BindImageHelper;->bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)V

    .line 200
    return-void
.end method

.method public bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
    .locals 8
    .param p1, "localPath"    # Ljava/lang/String;
    .param p2, "downloadUri"    # Landroid/net/Uri;
    .param p3, "downloadType"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p4, "displayImageOptions"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 193
    const-wide/16 v2, -0x1

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/miui/gallery/ui/MicroThumbGridItem;->bindImage(JLjava/lang/String;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 194
    return-void
.end method

.method public bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
    .locals 8
    .param p1, "localPath"    # Ljava/lang/String;
    .param p2, "downloadUri"    # Landroid/net/Uri;
    .param p3, "displayImageOptions"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 185
    const-wide/16 v2, -0x1

    sget-object v6, Lcom/miui/gallery/sdk/download/DownloadType;->MICRO:Lcom/miui/gallery/sdk/download/DownloadType;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/miui/gallery/ui/MicroThumbGridItem;->bindImage(JLjava/lang/String;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 186
    return-void
.end method

.method public bindIndicator(Ljava/lang/String;JJ)V
    .locals 4
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .param p4, "specialTypeFlags"    # J

    .prologue
    .line 203
    const/16 v2, 0x8

    .line 204
    .local v2, "visibility":I
    const/4 v0, 0x0

    .line 205
    .local v0, "indicatorText":Ljava/lang/String;
    const/4 v1, 0x0

    .line 206
    .local v1, "leftDrawableRes":I
    invoke-static {p1}, Lcom/miui/gallery/util/FileMimeUtil;->isGifFromMimeType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 207
    const/4 v2, 0x0

    .line 208
    const-string v0, "GIF"

    .line 227
    :cond_0
    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Lcom/miui/gallery/ui/MicroThumbGridItem;->updateTypeIndicator(ILjava/lang/String;I)V

    .line 228
    return-void

    .line 209
    :cond_1
    invoke-static {p1}, Lcom/miui/gallery/util/FileMimeUtil;->isVideoFromMimeType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 210
    const/4 v2, 0x0

    .line 211
    invoke-static {p4, p5}, Lcom/miui/gallery/util/SpecialTypeMediaUtils;->tryGetHFRIndicatorResId(J)I

    move-result v1

    .line 212
    if-eqz v1, :cond_2

    .line 213
    const-string v0, ""

    goto :goto_0

    .line 215
    :cond_2
    invoke-static {p2, p3}, Lcom/miui/gallery/util/FormatUtil;->formatVideoDuration(J)Ljava/lang/String;

    move-result-object v0

    .line 216
    const v1, 0x7f0202e7

    goto :goto_0

    .line 218
    :cond_3
    invoke-virtual {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p4, p5}, Lcom/miui/gallery/util/SpecialTypeMediaUtils;->isRefocusSupported(Landroid/content/Context;J)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 219
    const/4 v2, 0x0

    .line 220
    const-string v0, ""

    .line 221
    const v1, 0x7f0202e5

    goto :goto_0

    .line 222
    :cond_4
    invoke-virtual {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p4, p5}, Lcom/miui/gallery/util/SpecialTypeMediaUtils;->isMotionPhoto(Landroid/content/Context;J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 223
    const/4 v2, 0x0

    .line 224
    const-string v0, ""

    .line 225
    const v1, 0x7f0202e3

    goto :goto_0
.end method

.method public bindSyncIndicator(JILcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "newState"    # I
    .param p4, "showScene"    # Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;

    .prologue
    .line 298
    const/4 v6, 0x7

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/miui/gallery/ui/MicroThumbGridItem;->bindSyncIndicator(JILcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;I)V

    .line 299
    return-void
.end method

.method public bindSyncIndicator(JILcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;I)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "newState"    # I
    .param p4, "showScene"    # Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;
    .param p5, "displayLogic"    # I

    .prologue
    const v6, 0x7f05000f

    .line 302
    invoke-direct {p0, p4}, Lcom/miui/gallery/ui/MicroThumbGridItem;->needShowSyncIndicator(Lcom/miui/gallery/adapter/SyncStateDisplay$DisplayScene;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 303
    const/16 v4, 0x8

    invoke-direct {p0, v4}, Lcom/miui/gallery/ui/MicroThumbGridItem;->setSyncIndicatorVisibility(I)V

    .line 304
    iget-object v4, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSyncIndicator:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSyncIndicator:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 305
    iget-object v4, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSyncIndicator:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/miui/gallery/ui/MicroThumbGridItem;->needRefreshSyncIndicator(JII)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 313
    const/4 v3, 0x0

    .line 314
    .local v3, "visibility":I
    const/4 v2, 0x0

    .line 315
    .local v2, "resId":I
    const/4 v0, 0x0

    .line 316
    .local v0, "animation":Landroid/view/animation/Animation;
    const/4 v1, 0x0

    .line 317
    .local v1, "bgAnimation":Landroid/view/animation/Animation;
    sparse-switch p3, :sswitch_data_0

    .line 369
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unknow status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 320
    :sswitch_0
    invoke-static {p5}, Lcom/miui/gallery/ui/MicroThumbGridItem;->displaySyncedState(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 321
    const v2, 0x7f020224

    .line 322
    const/4 v0, 0x0

    .line 372
    :cond_2
    :goto_1
    iput-wide p1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mLastSyncId:J

    .line 373
    iput p3, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSyncState:I

    .line 374
    invoke-direct {p0, v3, v2, v0, v1}, Lcom/miui/gallery/ui/MicroThumbGridItem;->updateSyncIndicator(IILandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 324
    :cond_3
    iget v4, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSyncState:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    .line 325
    const/16 v3, 0x8

    goto :goto_1

    .line 326
    :cond_4
    invoke-static {p5}, Lcom/miui/gallery/ui/MicroThumbGridItem;->displaySyncingState(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 327
    const/16 v3, 0x8

    .line 328
    const v2, 0x7f020224

    .line 329
    invoke-virtual {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 331
    invoke-virtual {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_1

    .line 337
    :sswitch_1
    invoke-static {p5}, Lcom/miui/gallery/ui/MicroThumbGridItem;->displaySyncingState(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 338
    const v2, 0x7f020225

    .line 339
    invoke-virtual {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f050010

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_1

    .line 342
    :cond_5
    const/16 v3, 0x8

    .line 344
    goto :goto_1

    .line 346
    :sswitch_2
    invoke-static {p5}, Lcom/miui/gallery/ui/MicroThumbGridItem;->displaySyncableState(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 347
    const v2, 0x7f020225

    .line 348
    const/4 v0, 0x0

    goto :goto_1

    .line 350
    :cond_6
    const/16 v3, 0x8

    .line 352
    goto :goto_1

    .line 354
    :sswitch_3
    invoke-static {p5}, Lcom/miui/gallery/ui/MicroThumbGridItem;->displayUnSyncableState(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 355
    const v2, 0x7f020226

    .line 356
    const/4 v0, 0x0

    goto :goto_1

    .line 358
    :cond_7
    const/16 v3, 0x8

    .line 360
    goto :goto_1

    .line 365
    :sswitch_4
    const/4 v2, 0x0

    .line 366
    const/4 v0, 0x0

    .line 367
    goto :goto_1

    .line 317
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x7fffffff -> :sswitch_4
    .end sparse-switch
.end method

.method public getBackgroundImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getBackgroundMask()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->checkStubInflate()V

    .line 108
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mMask:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->checkStubInflate()V

    .line 177
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getShowNumberTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->checkStubInflate()V

    .line 114
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mPickingNumberIndicator:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTransitDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 519
    iget-object v2, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mImageView:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/miui/gallery/util/BindImageHelper;->isViewBindDrawable(Landroid/widget/ImageView;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 520
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_0

    .line 521
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    .line 522
    .local v1, "state":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v1, :cond_0

    .line 523
    invoke-virtual {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 526
    .end local v1    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_0
    return-object v0

    .line 519
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTransitFrame()Landroid/graphics/RectF;
    .locals 5

    .prologue
    .line 509
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public getTransitId()J
    .locals 2

    .prologue
    .line 504
    iget-wide v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mItemId:J

    return-wide v0
.end method

.method public getTransitPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mItemPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTransitScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    return-object v0
.end method

.method public getTransitionalItems()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 495
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 496
    .local v0, "items":Ljava/util/List;
    iget-wide v2, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mItemId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 497
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    :cond_0
    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    .line 152
    const/4 v0, 0x0

    .line 154
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    goto :goto_0
.end method

.method protected isSquareItem()Z
    .locals 1

    .prologue
    .line 463
    const/4 v0, 0x1

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 79
    const v0, 0x7f1201a7

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mItemStub:Landroid/view/ViewStub;

    .line 80
    const v0, 0x7f1201a6

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mImageView:Landroid/widget/ImageView;

    .line 81
    const v0, 0x7f1201a9

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mTypeIndicator:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f1201aa

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mFavoriteIndicator:Landroid/view/View;

    .line 83
    const v0, 0x7f1201a8

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mBottomIndicatorContainer:Landroid/view/View;

    .line 84
    new-instance v0, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    iget-object v1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mImageView:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mImageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    .line 85
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/gallery/Config$ThumbConfig;->sMicroTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    iput-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mImageSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 86
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->isSquareItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    invoke-super {p0, p1, p1}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 476
    :goto_0
    return-void

    .line 474
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method public setCheckable(Z)V
    .locals 2
    .param p1, "checkable"    # Z

    .prologue
    const/4 v0, 0x0

    .line 119
    if-eqz p1, :cond_2

    .line 120
    invoke-direct {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->checkStubInflate()V

    .line 121
    iget-object v1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mCheckBoxContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 123
    iget-object v1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mFavoriteIndicator:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->bindFavoriteIndicator(Z)V

    .line 127
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/MicroThumbGridItem;->setSimilarMarkEnable(Z)V

    .line 128
    return-void

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mCheckBoxContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mCheckBoxContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setCheckableListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 159
    if-nez p1, :cond_1

    .line 160
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mCheckBoxContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mCheckBoxContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->checkStubInflate()V

    .line 165
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mCheckBoxContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 141
    if-eqz p1, :cond_1

    .line 142
    invoke-direct {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->checkStubInflate()V

    .line 143
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public setImageForeground(I)V
    .locals 1
    .param p1, "fgDrawableRes"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mImageView:Landroid/widget/ImageView;

    instance-of v0, v0, Lcom/miui/gallery/widget/ForegroundImageView;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mImageView:Landroid/widget/ImageView;

    check-cast v0, Lcom/miui/gallery/widget/ForegroundImageView;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/widget/ForegroundImageView;->setForegroundResource(I)V

    .line 98
    :cond_0
    return-void
.end method

.method public setImageSize(Lcom/nostra13/universalimageloader/core/assist/ImageSize;)V
    .locals 0
    .param p1, "imageSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .prologue
    .line 89
    if-eqz p1, :cond_0

    .line 90
    iput-object p1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mImageSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 92
    :cond_0
    return-void
.end method

.method public setIsSimilarBestImage(Z)V
    .locals 0
    .param p1, "isBest"    # Z

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mIsSimilarBestImage:Z

    .line 182
    return-void
.end method

.method public setSimilarMarkEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 131
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mIsSimilarBestImage:Z

    if-eqz v0, :cond_1

    .line 132
    invoke-direct {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->checkStubInflate()V

    .line 133
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSimilarBestMark:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSimilarBestMark:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSimilarBestMark:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->checkStubInflate()V

    .line 172
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 173
    return-void
.end method

.method protected updateBottomIndicatorBg()V
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mTypeIndicator:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mTypeIndicator:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mFavoriteIndicator:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mFavoriteIndicator:Landroid/view/View;

    .line 442
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 443
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mBottomIndicatorContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 447
    :cond_2
    :goto_0
    return-void

    .line 444
    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mBottomIndicatorContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 445
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mBottomIndicatorContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateFavoriteIndicatorVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 432
    if-nez p1, :cond_1

    .line 433
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mFavoriteIndicator:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 437
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->updateBottomIndicatorBg()V

    .line 438
    return-void

    .line 434
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mFavoriteIndicator:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mFavoriteIndicator:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateTopIndicatorBg()V
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSyncIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSyncIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mSyncIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 389
    invoke-direct {p0}, Lcom/miui/gallery/ui/MicroThumbGridItem;->checkStubInflate()V

    .line 390
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mTopIndicatorContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mTopIndicatorContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mTopIndicatorContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateTypeIndicator(ILjava/lang/String;I)V
    .locals 3
    .param p1, "visibility"    # I
    .param p2, "indicatorText"    # Ljava/lang/String;
    .param p3, "leftDrawableRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 450
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mTypeIndicator:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 460
    :goto_0
    return-void

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mTypeIndicator:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mTypeIndicator:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 455
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mTypeIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, p3, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 459
    :goto_1
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/MicroThumbGridItem;->setTypeIndicatorVisibility(I)V

    goto :goto_0

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/MicroThumbGridItem;->mTypeIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, p3, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1
.end method
