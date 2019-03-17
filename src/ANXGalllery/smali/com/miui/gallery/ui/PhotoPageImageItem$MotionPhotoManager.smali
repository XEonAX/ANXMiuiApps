.class Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;
.super Ljava/lang/Object;
.source "PhotoPageImageItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageImageItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MotionPhotoManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager$CheckForLongPress;
    }
.end annotation


# instance fields
.field private mAutoPlay:Z

.field private mAutoStopRunnable:Ljava/lang/Runnable;

.field private mHasPerformedLongPress:Z

.field private mHasTransition:Z

.field private mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mNeedHapticFeedback:Z

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mPendingCheckForLongPress:Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager$CheckForLongPress;

.field private mPendingStop:Z

.field private mPlayable:Z

.field private mPressed:Z

.field private mRemoveRunnable:Ljava/lang/Runnable;

.field private mStartRunnable:Ljava/lang/Runnable;

.field private mStarted:Z

.field private mVideoView:Lcom/miui/gallery/widget/GalleryVideoView;

.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/PhotoPageImageItem;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1299
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1313
    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mStarted:Z

    .line 1315
    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mPendingStop:Z

    .line 1543
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager$1;-><init>(Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 1552
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager$2;-><init>(Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 1560
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager$3;-><init>(Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 1579
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager$4;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager$4;-><init>(Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mStartRunnable:Ljava/lang/Runnable;

    .line 1593
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager$5;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager$5;-><init>(Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mRemoveRunnable:Ljava/lang/Runnable;

    .line 1601
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager$6;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager$6;-><init>(Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mAutoStopRunnable:Ljava/lang/Runnable;

    .line 1664
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/PhotoPageImageItem;Lcom/miui/gallery/ui/PhotoPageImageItem$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem;
    .param p2, "x1"    # Lcom/miui/gallery/ui/PhotoPageImageItem$1;

    .prologue
    .line 1299
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;-><init>(Lcom/miui/gallery/ui/PhotoPageImageItem;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1299
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->removeVideoView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;

    .prologue
    .line 1299
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->hideVideoView()V

    return-void
.end method

.method static synthetic access$3600(Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;)Lcom/miui/gallery/widget/GalleryVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mVideoView:Lcom/miui/gallery/widget/GalleryVideoView;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;

    .prologue
    .line 1299
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mPendingStop:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mStartRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;
    .param p1, "x1"    # Z

    .prologue
    .line 1299
    iput-boolean p1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mStarted:Z

    return p1
.end method

.method static synthetic access$4000(Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;

    .prologue
    .line 1299
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mNeedHapticFeedback:Z

    return v0
.end method

.method static synthetic access$4100(Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;

    .prologue
    .line 1299
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->stopPlayback()V

    return-void
.end method

.method static synthetic access$4300(Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;

    .prologue
    .line 1299
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mPressed:Z

    return v0
.end method

.method static synthetic access$4400(Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;

    .prologue
    .line 1299
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->performLongClick()V

    return-void
.end method

.method static synthetic access$4502(Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;
    .param p1, "x1"    # Z

    .prologue
    .line 1299
    iput-boolean p1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mHasPerformedLongPress:Z

    return p1
.end method

.method private addVideoView(Z)Z
    .locals 14
    .param p1, "autoPlay"    # Z

    .prologue
    .line 1423
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->isItemValid()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->isPlayRequested()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1424
    :cond_0
    const/4 v9, 0x0

    .line 1488
    :goto_0
    return v9

    .line 1427
    :cond_1
    const-string v9, "PhotoPageImageItem"

    const-string v10, "MotionPhoto addVideoView"

    invoke-static {v9, v10}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    new-instance v9, Lcom/miui/gallery/widget/GalleryVideoView;

    iget-object v10, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-virtual {v10}, Lcom/miui/gallery/ui/PhotoPageImageItem;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/miui/gallery/widget/GalleryVideoView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mVideoView:Lcom/miui/gallery/widget/GalleryVideoView;

    .line 1429
    iget-object v9, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v9, v9, Lcom/miui/gallery/ui/PhotoPageImageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Luk/co/senab/photoview/PhotoView;->setInterceptTouch(Z)V

    .line 1430
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mNeedHapticFeedback:Z

    .line 1431
    iput-boolean p1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mAutoPlay:Z

    .line 1432
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mStarted:Z

    .line 1434
    iget-object v9, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v9, :cond_2

    .line 1435
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v9, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 1436
    iget-object v9, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v10, 0xd

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1439
    :cond_2
    iget-object v9, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mVideoView:Lcom/miui/gallery/widget/GalleryVideoView;

    iget-object v10, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v9, v10}, Lcom/miui/gallery/widget/GalleryVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1440
    iget-object v9, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mVideoView:Lcom/miui/gallery/widget/GalleryVideoView;

    iget-object v10, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v9, v10}, Lcom/miui/gallery/widget/GalleryVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1441
    iget-object v9, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mVideoView:Lcom/miui/gallery/widget/GalleryVideoView;

    iget-object v10, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v9, v10}, Lcom/miui/gallery/widget/GalleryVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1442
    if-eqz p1, :cond_4

    .line 1443
    iget-object v9, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mVideoView:Lcom/miui/gallery/widget/GalleryVideoView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/miui/gallery/widget/GalleryVideoView;->setVolume(F)V

    .line 1444
    iget-object v9, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mVideoView:Lcom/miui/gallery/widget/GalleryVideoView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/miui/gallery/widget/GalleryVideoView;->setAudioFocusRequest(I)V

    .line 1450
    :goto_1
    iget-object v9, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v9, v9, Lcom/miui/gallery/ui/PhotoPageImageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v9}, Luk/co/senab/photoview/PhotoView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1451
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_5

    .line 1452
    new-instance v8, Landroid/graphics/RectF;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v11, v11, Lcom/miui/gallery/ui/PhotoPageImageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v11}, Luk/co/senab/photoview/PhotoView;->getWidth()I

    move-result v11

    int-to-float v11, v11

    iget-object v12, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v12, v12, Lcom/miui/gallery/ui/PhotoPageImageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v12}, Luk/co/senab/photoview/PhotoView;->getHeight()I

    move-result v12

    int-to-float v12, v12

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1453
    .local v8, "viewRect":Landroid/graphics/RectF;
    new-instance v2, Landroid/graphics/RectF;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    int-to-float v12, v12

    invoke-direct {v2, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1454
    .local v2, "imageRect":Landroid/graphics/RectF;
    iget-object v9, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v9, v9, Lcom/miui/gallery/ui/PhotoPageImageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v9}, Luk/co/senab/photoview/PhotoView;->getDisplayMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 1457
    .local v0, "displayMatrix":Landroid/graphics/Matrix;
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 1458
    .local v7, "videoRect":Landroid/graphics/RectF;
    invoke-virtual {v0, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1459
    invoke-virtual {v7, v7, v8}, Landroid/graphics/RectF;->setIntersect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 1460
    iget v9, v7, Landroid/graphics/RectF;->left:F

    neg-float v9, v9

    iget v10, v7, Landroid/graphics/RectF;->top:F

    neg-float v10, v10

    invoke-virtual {v7, v9, v10}, Landroid/graphics/RectF;->offset(FF)V

    .line 1463
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 1464
    .local v3, "matrix":Landroid/graphics/Matrix;
    sget-object v9, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v7, v2, v9}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 1465
    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 1468
    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v9

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    sub-float/2addr v9, v10

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-virtual {v3, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1470
    iget-object v9, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mVideoView:Lcom/miui/gallery/widget/GalleryVideoView;

    invoke-virtual {v9, v3}, Lcom/miui/gallery/widget/GalleryVideoView;->setTransform(Landroid/graphics/Matrix;)V

    .line 1471
    iget-object v9, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v10

    float-to-int v10, v10

    iput v10, v9, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1472
    iget-object v9, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v10

    float-to-int v10, v10

    iput v10, v9, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1479
    .end local v0    # "displayMatrix":Landroid/graphics/Matrix;
    .end local v2    # "imageRect":Landroid/graphics/RectF;
    .end local v3    # "matrix":Landroid/graphics/Matrix;
    .end local v7    # "videoRect":Landroid/graphics/RectF;
    .end local v8    # "viewRect":Landroid/graphics/RectF;
    :goto_2
    iget-object v9, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v9, v9, Lcom/miui/gallery/ui/PhotoPageImageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v9}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v6

    .line 1480
    .local v6, "videoPath":Ljava/lang/String;
    iget-object v9, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v9, v9, Lcom/miui/gallery/ui/PhotoPageImageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v9}, Lcom/miui/gallery/model/BaseDataItem;->getMotionOffset()J

    move-result-wide v4

    .line 1481
    .local v4, "videoOffset":J
    iget-object v9, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mVideoView:Lcom/miui/gallery/widget/GalleryVideoView;

    invoke-virtual {v9, v6, v4, v5}, Lcom/miui/gallery/widget/GalleryVideoView;->setVideoFilePath(Ljava/lang/String;J)V

    .line 1482
    iget-object v9, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v10, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mVideoView:Lcom/miui/gallery/widget/GalleryVideoView;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v9, v10, v11, v12}, Lcom/miui/gallery/ui/PhotoPageImageItem;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1484
    if-eqz p1, :cond_3

    .line 1485
    iget-object v9, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v9, v9, Lcom/miui/gallery/ui/PhotoPageImageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    iget-object v10, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mAutoStopRunnable:Ljava/lang/Runnable;

    const-wide/16 v12, 0x2ee

    invoke-virtual {v9, v10, v12, v13}, Luk/co/senab/photoview/PhotoView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1488
    :cond_3
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 1446
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "videoOffset":J
    .end local v6    # "videoPath":Ljava/lang/String;
    :cond_4
    iget-object v9, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mVideoView:Lcom/miui/gallery/widget/GalleryVideoView;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v9, v10}, Lcom/miui/gallery/widget/GalleryVideoView;->setVolume(F)V

    .line 1447
    iget-object v9, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mVideoView:Lcom/miui/gallery/widget/GalleryVideoView;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/miui/gallery/widget/GalleryVideoView;->setAudioFocusRequest(I)V

    goto/16 :goto_1

    .line 1474
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    iget-object v9, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mVideoView:Lcom/miui/gallery/widget/GalleryVideoView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/miui/gallery/widget/GalleryVideoView;->setTransform(Landroid/graphics/Matrix;)V

    .line 1475
    iget-object v9, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x1

    iput v10, v9, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1476
    iget-object v9, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x1

    iput v10, v9, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_2
.end method

.method private checkForLongClick()V
    .locals 4

    .prologue
    .line 1644
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mPendingCheckForLongPress:Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager$CheckForLongPress;

    if-nez v0, :cond_0

    .line 1645
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager$CheckForLongPress;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager$CheckForLongPress;-><init>(Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;Lcom/miui/gallery/ui/PhotoPageImageItem$1;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mPendingCheckForLongPress:Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager$CheckForLongPress;

    .line 1647
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mPendingCheckForLongPress:Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager$CheckForLongPress;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/gallery/ui/PhotoPageImageItem;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1648
    return-void
.end method

.method private hideVideoView()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1f4

    .line 1492
    const-string v1, "PhotoPageImageItem"

    const-string v2, "MotionPhoto hideVideoView"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1494
    .local v0, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1495
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1496
    new-instance v1, Lmiui/view/animation/SineEaseInOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/SineEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1497
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageImageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v1, v0}, Luk/co/senab/photoview/PhotoView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1498
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageImageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mAutoStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Luk/co/senab/photoview/PhotoView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1499
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mVideoView:Lcom/miui/gallery/widget/GalleryVideoView;

    if-eqz v1, :cond_0

    .line 1500
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mVideoView:Lcom/miui/gallery/widget/GalleryVideoView;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mRemoveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/GalleryVideoView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1501
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mVideoView:Lcom/miui/gallery/widget/GalleryVideoView;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mRemoveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v4, v5}, Lcom/miui/gallery/widget/GalleryVideoView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1503
    :cond_0
    return-void
.end method

.method private isItemValid()Z
    .locals 4

    .prologue
    .line 1538
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageImageItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/extraphoto/sdk/ExtraPhotoSDK;->isDeviceSupportMotionPhoto(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    .line 1539
    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    .line 1540
    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->isMotionPhoto()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->getMotionOffset()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPlayRequested()Z
    .locals 1

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mVideoView:Lcom/miui/gallery/widget/GalleryVideoView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performLongClick()V
    .locals 2

    .prologue
    .line 1657
    const-string v0, "PhotoPageImageItem"

    const-string v1, "MotionPhoto performLongClick"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1658
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->startPlay(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1659
    const-string v0, "motion_photo"

    const-string v1, "motion_photo_play_press"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1662
    :cond_0
    return-void
.end method

.method private removeLongPressCallback()V
    .locals 2

    .prologue
    .line 1651
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mPendingCheckForLongPress:Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager$CheckForLongPress;

    if-eqz v0, :cond_0

    .line 1652
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mPendingCheckForLongPress:Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager$CheckForLongPress;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoPageImageItem;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1654
    :cond_0
    return-void
.end method

.method private removeVideoView(Ljava/lang/String;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1506
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mVideoView:Lcom/miui/gallery/widget/GalleryVideoView;

    if-eqz v0, :cond_1

    .line 1507
    const-string v0, "PhotoPageImageItem"

    const-string v1, "MotionPhoto removeVideoView %s"

    invoke-static {v0, v1, p1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1508
    iput-boolean v3, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mPendingStop:Z

    .line 1509
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mVideoView:Lcom/miui/gallery/widget/GalleryVideoView;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/GalleryVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1510
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mVideoView:Lcom/miui/gallery/widget/GalleryVideoView;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/GalleryVideoView;->stopPlayback()V

    .line 1512
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mVideoView:Lcom/miui/gallery/widget/GalleryVideoView;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/widget/GalleryVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1513
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mVideoView:Lcom/miui/gallery/widget/GalleryVideoView;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/widget/GalleryVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1514
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mVideoView:Lcom/miui/gallery/widget/GalleryVideoView;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/widget/GalleryVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1515
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mVideoView:Lcom/miui/gallery/widget/GalleryVideoView;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mRemoveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/GalleryVideoView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1516
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mVideoView:Lcom/miui/gallery/widget/GalleryVideoView;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/GalleryVideoView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1517
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mVideoView:Lcom/miui/gallery/widget/GalleryVideoView;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoPageImageItem;->removeView(Landroid/view/View;)V

    .line 1518
    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mVideoView:Lcom/miui/gallery/widget/GalleryVideoView;

    .line 1520
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoView;->clearAnimation()V

    .line 1521
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v0, v3}, Luk/co/senab/photoview/PhotoView;->setVisibility(I)V

    .line 1522
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v0, v3}, Luk/co/senab/photoview/PhotoView;->setInterceptTouch(Z)V

    .line 1523
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mAutoStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Luk/co/senab/photoview/PhotoView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1525
    :cond_1
    return-void
.end method

.method private startPlay(ZZ)Z
    .locals 5
    .param p1, "autoPlay"    # Z
    .param p2, "needFeedback"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1393
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/PhotoPageImageItem;->isPaused()Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mHasTransition:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v3, v3, Lcom/miui/gallery/ui/PhotoPageImageItem;->mCheckManager:Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/PhotoPageItem$CheckManager;->inAction()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->isItemValid()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v0, v2

    .line 1419
    :cond_1
    :goto_0
    return v0

    .line 1397
    :cond_2
    const/4 v0, 0x0

    .line 1398
    .local v0, "result":Z
    if-eqz p1, :cond_3

    .line 1399
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->isPlayRequested()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1400
    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->addVideoView(Z)Z

    move-result v0

    goto :goto_0

    .line 1403
    :cond_3
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mVideoView:Lcom/miui/gallery/widget/GalleryVideoView;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mVideoView:Lcom/miui/gallery/widget/GalleryVideoView;

    invoke-virtual {v3}, Lcom/miui/gallery/widget/GalleryVideoView;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1404
    const-string v3, "PhotoPageImageItem"

    const-string v4, "MotionPhoto cancel auto stop"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mVideoView:Lcom/miui/gallery/widget/GalleryVideoView;

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mAutoStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/widget/GalleryVideoView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1406
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mVideoView:Lcom/miui/gallery/widget/GalleryVideoView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/miui/gallery/widget/GalleryVideoView;->setVolume(F)V

    .line 1407
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mVideoView:Lcom/miui/gallery/widget/GalleryVideoView;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/miui/gallery/widget/GalleryVideoView;->requestAudioFocus(I)V

    .line 1408
    if-eqz p2, :cond_4

    .line 1409
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    invoke-virtual {v3, v1}, Lcom/miui/gallery/ui/PhotoPageImageItem;->performHapticFeedback(I)Z

    .line 1411
    :cond_4
    iput-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mAutoPlay:Z

    .line 1412
    const/4 v0, 0x1

    goto :goto_0

    .line 1414
    :cond_5
    const-string v3, "MotionPhoto start play"

    invoke-direct {p0, v3}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->removeVideoView(Ljava/lang/String;)V

    .line 1415
    invoke-direct {p0, v2}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->addVideoView(Z)Z

    move-result v0

    .line 1416
    if-eqz p2, :cond_6

    if-eqz v0, :cond_6

    :goto_1
    iput-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mNeedHapticFeedback:Z

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_1
.end method

.method private stopPlayback()V
    .locals 2

    .prologue
    .line 1528
    const-string v0, "PhotoPageImageItem"

    const-string v1, "MotionPhoto stopPlayback"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mVideoView:Lcom/miui/gallery/widget/GalleryVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mVideoView:Lcom/miui/gallery/widget/GalleryVideoView;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/GalleryVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1530
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mVideoView:Lcom/miui/gallery/widget/GalleryVideoView;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/GalleryVideoView;->stopPlayback()V

    .line 1531
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->hideVideoView()V

    .line 1535
    :goto_0
    return-void

    .line 1533
    :cond_0
    const-string/jumbo v0, "stopPlayback"

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->removeVideoView(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onActionBarOperationClick()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1328
    const-string v0, "PhotoPageImageItem"

    const-string v1, "MotionPhoto onActionBarClick"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->isPlayRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mAutoPlay:Z

    if-nez v0, :cond_1

    .line 1330
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->stopPlayback()V

    .line 1335
    :cond_0
    :goto_0
    return-void

    .line 1331
    :cond_1
    invoke-direct {p0, v2, v2}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->startPlay(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1332
    const-string v0, "motion_photo"

    const-string v1, "motion_photo_play_action_bar"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityTransition()V
    .locals 1

    .prologue
    .line 1350
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mHasTransition:Z

    .line 1351
    const-string v0, "onTransition"

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->removeVideoView(Ljava/lang/String;)V

    .line 1352
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 1

    .prologue
    .line 1355
    const-string v0, "configChanged"

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->removeVideoView(Ljava/lang/String;)V

    .line 1356
    return-void
.end method

.method public onMatrixChanged()V
    .locals 1

    .prologue
    .line 1385
    const-string v0, "matrixChanged"

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->removeVideoView(Ljava/lang/String;)V

    .line 1386
    return-void
.end method

.method public onPageScrollDragging()V
    .locals 2

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mVideoView:Lcom/miui/gallery/widget/GalleryVideoView;

    if-eqz v0, :cond_1

    .line 1360
    const-string v0, "PhotoPageImageItem"

    const-string v1, "MotionPhoto pause onDragging"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mPendingStop:Z

    .line 1363
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mVideoView:Lcom/miui/gallery/widget/GalleryVideoView;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/GalleryVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1364
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mVideoView:Lcom/miui/gallery/widget/GalleryVideoView;

    invoke-virtual {v0}, Lcom/miui/gallery/widget/GalleryVideoView;->pause()V

    .line 1366
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->this$0:Lcom/miui/gallery/ui/PhotoPageImageItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageImageItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mAutoStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Luk/co/senab/photoview/PhotoView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1367
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mVideoView:Lcom/miui/gallery/widget/GalleryVideoView;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/GalleryVideoView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1368
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mVideoView:Lcom/miui/gallery/widget/GalleryVideoView;

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mRemoveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/widget/GalleryVideoView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1370
    :cond_1
    return-void
.end method

.method public onPageScrollIdle()V
    .locals 2

    .prologue
    .line 1373
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mPendingStop:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mVideoView:Lcom/miui/gallery/widget/GalleryVideoView;

    if-eqz v0, :cond_0

    .line 1374
    const-string v0, "PhotoPageImageItem"

    const-string v1, "MotionPhoto hide onIdle"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mStarted:Z

    if-eqz v0, :cond_1

    .line 1376
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->hideVideoView()V

    .line 1381
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mPendingStop:Z

    .line 1382
    return-void

    .line 1378
    :cond_1
    const-string v0, "onIdle"

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->removeVideoView(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1346
    const-string v0, "onPause"

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->removeVideoView(Ljava/lang/String;)V

    .line 1347
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1342
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mHasTransition:Z

    .line 1343
    return-void
.end method

.method public onSelected(ZZZ)V
    .locals 0
    .param p1, "resume"    # Z
    .param p2, "enter"    # Z
    .param p3, "init"    # Z

    .prologue
    .line 1325
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1615
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 1616
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->isItemValid()Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mPlayable:Z

    .line 1618
    :cond_0
    iget-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mPlayable:Z

    if-nez v2, :cond_1

    .line 1640
    :goto_0
    return v0

    .line 1621
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v0, v1

    .line 1640
    goto :goto_0

    .line 1623
    :pswitch_1
    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mHasPerformedLongPress:Z

    .line 1624
    iput-boolean v1, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mPressed:Z

    .line 1625
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->checkForLongClick()V

    move v0, v1

    .line 1626
    goto :goto_0

    .line 1631
    :pswitch_2
    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mPressed:Z

    .line 1632
    iget-boolean v2, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mHasPerformedLongPress:Z

    if-eqz v2, :cond_2

    .line 1633
    const-string v2, "PhotoPageImageItem"

    const-string v3, "MotionPhoto long press cancel"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->stopPlayback()V

    .line 1636
    :cond_2
    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mHasPerformedLongPress:Z

    .line 1637
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->removeLongPressCallback()V

    goto :goto_1

    .line 1621
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onUnSelected()V
    .locals 1

    .prologue
    .line 1338
    const-string/jumbo v0, "unSelected"

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->removeVideoView(Ljava/lang/String;)V

    .line 1339
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 1610
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->mHasTransition:Z

    .line 1611
    const-string v0, "release"

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageImageItem$MotionPhotoManager;->removeVideoView(Ljava/lang/String;)V

    .line 1612
    return-void
.end method
