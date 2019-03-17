.class Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;
.super Ljava/lang/Object;
.source "RecommendFaceGroupAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecommendFaceItem"
.end annotation


# instance fields
.field private mCheckbox:Landroid/widget/CheckBox;

.field private mCoverImage:Landroid/widget/ImageView;

.field private mCoverImageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

.field private mFacePath:Ljava/lang/String;

.field private mFileLength:J

.field private mPhotoCloudId:J

.field private mServerId:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;Landroid/view/View;)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 323
    iput-object p1, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;->this$0:Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    const v0, 0x7f120260

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;->mCoverImage:Landroid/widget/ImageView;

    .line 325
    new-instance v0, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    iget-object v1, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;->mCoverImage:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;->mCoverImageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    .line 326
    const v0, 0x7f120261

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;->mCheckbox:Landroid/widget/CheckBox;

    .line 327
    iget-object v0, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;->mCoverImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 328
    iget-object v0, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;->mCoverImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 329
    iget-object v0, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    iget-object v0, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 331
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;

    .prologue
    .line 314
    iget-wide v0, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;->mFileLength:J

    return-wide v0
.end method


# virtual methods
.method public bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Landroid/graphics/RectF;Lcom/miui/gallery/sdk/download/DownloadType;)V
    .locals 15
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "downloadUri"    # Landroid/net/Uri;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p4, "facePosition"    # Landroid/graphics/RectF;
    .param p5, "sourceType"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 369
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isActiveNetworkMetered()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v3, Lcom/miui/gallery/sdk/download/DownloadType;->MICRO:Lcom/miui/gallery/sdk/download/DownloadType;

    .line 370
    .local v3, "type":Lcom/miui/gallery/sdk/download/DownloadType;
    :goto_0
    iget-object v4, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;->mCoverImage:Landroid/widget/ImageView;

    .line 371
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v1

    iget-object v6, v1, Lcom/miui/gallery/Config$ThumbConfig;->sMicroTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    const/4 v8, 0x1

    const/4 v9, 0x1

    iget-object v1, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;->this$0:Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;

    invoke-static {v1}, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->access$100(Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;)Lcom/miui/gallery/util/BindImageHelper$OnImageLoadingCompleteListener;

    move-result-object v10

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p4

    .line 370
    invoke-static/range {v1 .. v10}, Lcom/miui/gallery/util/BindImageHelper;->bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Landroid/graphics/RectF;ZZLcom/miui/gallery/util/BindImageHelper$OnImageLoadingCompleteListener;)V

    .line 372
    sget-object v1, Lcom/miui/gallery/sdk/download/DownloadType;->MICRO:Lcom/miui/gallery/sdk/download/DownloadType;

    move-object/from16 v0, p5

    if-ne v1, v0, :cond_0

    .line 373
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 374
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isActiveNetworkMetered()Z

    move-result v1

    if-nez v1, :cond_0

    .line 375
    invoke-static {}, Lcom/miui/gallery/util/uil/CloudImageLoader;->getInstance()Lcom/miui/gallery/util/uil/CloudImageLoader;

    move-result-object v4

    sget-object v6, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL:Lcom/miui/gallery/sdk/download/DownloadType;

    iget-object v7, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;->mCoverImage:Landroid/widget/ImageView;

    .line 376
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v1

    iget-object v9, v1, Lcom/miui/gallery/Config$ThumbConfig;->sMicroTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    iget-object v1, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;->this$0:Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;

    invoke-static {v1}, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->access$400(Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;)Lcom/miui/gallery/util/uil/CloudImageLoadingListener;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v5, p2

    move-object/from16 v8, p3

    move-object/from16 v12, p4

    .line 375
    invoke-virtual/range {v4 .. v14}, Lcom/miui/gallery/util/uil/CloudImageLoader;->displayImage(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/miui/gallery/util/uil/CloudImageLoadingListener;Lcom/miui/gallery/util/uil/CloudImageLoadingProgressListener;Landroid/graphics/RectF;ZZ)V

    .line 379
    :cond_0
    return-void

    .line 369
    .end local v3    # "type":Lcom/miui/gallery/sdk/download/DownloadType;
    :cond_1
    sget-object v3, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL:Lcom/miui/gallery/sdk/download/DownloadType;

    goto :goto_0
.end method

.method public needToFresh(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
    .locals 10
    .param p1, "displayImageOptions"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    const/4 v4, 0x0

    .line 382
    iget-object v0, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;->mFacePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;->mServerId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    const/4 v0, 0x1

    new-array v9, v0, [Landroid/graphics/RectF;

    .line 384
    .local v9, "faceRegion":[Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;->mServerId:Ljava/lang/String;

    invoke-static {v0, v9}, Lcom/miui/gallery/provider/FaceManager;->queryCoverImageOfOneFace(Ljava/lang/String;[Landroid/graphics/RectF;)Ljava/lang/String;

    move-result-object v8

    .line 386
    .local v8, "facePath":Ljava/lang/String;
    iput-object v8, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;->mFacePath:Ljava/lang/String;

    .line 387
    iget-object v0, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;->mFacePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    .line 389
    invoke-virtual {v1, v8}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;->mCoverImageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    const/4 v3, 0x0

    aget-object v7, v9, v3

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    .line 388
    invoke-virtual/range {v0 .. v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Landroid/graphics/RectF;)V

    .line 393
    .end local v8    # "facePath":Ljava/lang/String;
    .end local v9    # "faceRegion":[Landroid/graphics/RectF;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 334
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 341
    :goto_0
    return-void

    .line 336
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;->this$0:Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;

    iget-object v1, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;->mServerId:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->access$200(Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;Ljava/lang/String;Z)V

    goto :goto_0

    .line 334
    :pswitch_data_0
    .packed-switch 0x7f120261
        :pswitch_0
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 345
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f120260

    if-ne v0, v1, :cond_0

    .line 347
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 348
    .local v8, "action":I
    packed-switch v8, :pswitch_data_0

    :goto_0
    :pswitch_0
    move v0, v9

    .line 363
    .end local v8    # "action":I
    :goto_1
    return v0

    .line 350
    .restart local v8    # "action":I
    :pswitch_1
    invoke-virtual {p1, v9}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 354
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 355
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v1, v3

    float-to-int v1, v1

    .line 353
    invoke-static {v0, v1, p1, v10}, Lcom/miui/gallery/util/photoview/ItemViewInfo;->getImageInfo(IILandroid/view/View;I)Lcom/miui/gallery/util/photoview/ItemViewInfo;

    move-result-object v2

    .line 356
    .local v2, "viewInfo":Lcom/miui/gallery/util/photoview/ItemViewInfo;
    iget-object v0, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;->this$0:Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;

    iget-object v1, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;->mFacePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;->mServerId:Ljava/lang/String;

    iget-wide v4, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;->mPhotoCloudId:J

    iget-wide v6, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;->mFileLength:J

    invoke-static/range {v0 .. v7}, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;->access$300(Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;Ljava/lang/String;Lcom/miui/gallery/util/photoview/ItemViewInfo;Ljava/lang/String;JJ)V

    .line 358
    .end local v2    # "viewInfo":Lcom/miui/gallery/util/photoview/ItemViewInfo;
    :pswitch_3
    invoke-virtual {p1, v10}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .end local v8    # "action":I
    :cond_0
    move v0, v10

    .line 363
    goto :goto_1

    .line 348
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 416
    iget-object v0, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 417
    return-void
.end method

.method public setCloudId(J)V
    .locals 1
    .param p1, "cloudId"    # J

    .prologue
    .line 400
    iput-wide p1, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;->mPhotoCloudId:J

    .line 401
    return-void
.end method

.method public setFacePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 404
    iput-object p1, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;->mFacePath:Ljava/lang/String;

    .line 405
    return-void
.end method

.method public setFileLength(J)V
    .locals 1
    .param p1, "fileLength"    # J

    .prologue
    .line 412
    iput-wide p1, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;->mFileLength:J

    .line 413
    return-void
.end method

.method public setServerId(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverId"    # Ljava/lang/String;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter$RecommendFaceItem;->mServerId:Ljava/lang/String;

    .line 397
    return-void
.end method
