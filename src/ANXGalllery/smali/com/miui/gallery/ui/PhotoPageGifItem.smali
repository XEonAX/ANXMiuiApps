.class public Lcom/miui/gallery/ui/PhotoPageGifItem;
.super Lcom/miui/gallery/ui/PhotoPageItem;
.source "PhotoPageGifItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/PhotoPageGifItem$GifDownloadManager;,
        Lcom/miui/gallery/ui/PhotoPageGifItem$GifJob;
    }
.end annotation


# instance fields
.field private mActionBarHeight:I

.field private mGifFuture:Lcom/miui/gallery/threadpool/Future;

.field private mGifListener:Lcom/miui/gallery/util/gifdecoder/NSGifDecode$GifFrameUpdateListener;

.field private mHandler:Landroid/os/Handler;

.field private mIndicator:Landroid/view/View;

.field private mIndicatorMargin:I

.field private mPlayIcon:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    :try_start_0
    const-string v1, "MiuiGalleryNSGIF"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 39
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 40
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v1, "PhotoPageGifItem"

    const-string v2, "load jni failed."

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageGifItem$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageGifItem$1;-><init>(Lcom/miui/gallery/ui/PhotoPageGifItem;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageGifItem;->mHandler:Landroid/os/Handler;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/PhotoPageGifItem;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageGifItem;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageGifItem;->setPlayIconVisible(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/PhotoPageGifItem;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageGifItem;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageGifItem;->setIndicatorVisible(ZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/PhotoPageGifItem;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageGifItem;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageGifItem;->mIndicator:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/PhotoPageGifItem;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageGifItem;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageGifItem;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/ui/PhotoPageGifItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/PhotoPageGifItem;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageGifItem;->tryPlayGif()V

    return-void
.end method

.method private adjustIndicatorLocation()V
    .locals 7

    .prologue
    .line 135
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageGifItem;->mIndicator:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageGifItem;->mIndicator:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 136
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageGifItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v3}, Luk/co/senab/photoview/PhotoView;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 137
    .local v0, "displayRect":Landroid/graphics/RectF;
    if-eqz v0, :cond_1

    .line 138
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageGifItem;->getIndicatorMargin()I

    move-result v3

    int-to-float v1, v3

    .line 139
    .local v1, "translationX":F
    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageGifItem;->isActionBarVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/miui/gallery/ui/PhotoPageGifItem;->mActionBarHeight:I

    int-to-float v3, v3

    :goto_0
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageGifItem;->getIndicatorMargin()I

    move-result v4

    int-to-float v4, v4

    add-float v2, v3, v4

    .line 140
    .local v2, "translationY":F
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageGifItem;->mIndicator:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    cmpl-float v3, v3, v1

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageGifItem;->mIndicator:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_1

    .line 141
    :cond_0
    const-string v3, "PhotoPageGifItem"

    const-string/jumbo v4, "setTranslation x %s, y %s"

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 142
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageGifItem;->mIndicator:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 143
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageGifItem;->mIndicator:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 147
    .end local v0    # "displayRect":Landroid/graphics/RectF;
    .end local v1    # "translationX":F
    .end local v2    # "translationY":F
    :cond_1
    return-void

    .line 139
    .restart local v0    # "displayRect":Landroid/graphics/RectF;
    .restart local v1    # "translationX":F
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private cancelGifDecoder()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageGifItem;->mGifFuture:Lcom/miui/gallery/threadpool/Future;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageGifItem;->mGifFuture:Lcom/miui/gallery/threadpool/Future;

    invoke-interface {v0}, Lcom/miui/gallery/threadpool/Future;->cancel()V

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageGifItem;->mGifFuture:Lcom/miui/gallery/threadpool/Future;

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageGifItem;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 236
    return-void
.end method

.method private getIndicatorMargin()I
    .locals 2

    .prologue
    .line 128
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageGifItem;->mIndicatorMargin:I

    if-nez v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageGifItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b01c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/PhotoPageGifItem;->mIndicatorMargin:I

    .line 131
    :cond_0
    iget v0, p0, Lcom/miui/gallery/ui/PhotoPageGifItem;->mIndicatorMargin:I

    return v0
.end method

.method private initIndicator()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 99
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageGifItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 100
    .local v0, "indicator":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageGifItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020151

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 102
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 103
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 104
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/ui/PhotoPageGifItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageGifItem;->mIndicator:Landroid/view/View;

    .line 107
    return-void
.end method

.method private initPlayIcon()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 83
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageGifItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 84
    .local v1, "playIcon":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageGifItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020357

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageGifItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c03d1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 86
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 87
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 88
    invoke-virtual {p0, v1, v0}, Lcom/miui/gallery/ui/PhotoPageGifItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoPageGifItem;->mPlayIcon:Landroid/view/View;

    .line 90
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageGifItem;->mPlayIcon:Landroid/view/View;

    new-instance v3, Lcom/miui/gallery/ui/PhotoPageGifItem$2;

    invoke-direct {v3, p0}, Lcom/miui/gallery/ui/PhotoPageGifItem$2;-><init>(Lcom/miui/gallery/ui/PhotoPageGifItem;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-void
.end method

.method private isOriginFileExist()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageGifItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageGifItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v0}, Lcom/miui/gallery/model/BaseDataItem;->getOriginalPath()Ljava/lang/String;

    move-result-object v0

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

.method private needShowIndicator()Z
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageGifItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageGifItem;->isOriginFileExist()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageGifItem;->isAnimExiting()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageGifItem;->isActionBarVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needShowPlayIcon()Z
    .locals 1

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageGifItem;->isOriginFileExist()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageGifItem;->isAnimExiting()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setIndicatorVisible(ZZ)V
    .locals 3
    .param p1, "visible"    # Z
    .param p2, "anim"    # Z

    .prologue
    const/16 v2, 0x8

    .line 172
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageGifItem;->needShowIndicator()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 173
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageGifItem;->mIndicator:Landroid/view/View;

    if-nez v1, :cond_0

    .line 174
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageGifItem;->initIndicator()V

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageGifItem;->mIndicator:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageGifItem;->mIndicator:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 178
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageGifItem;->mIndicator:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 179
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageGifItem;->adjustIndicatorLocation()V

    .line 180
    if-eqz p2, :cond_1

    .line 181
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageGifItem;->mIndicator:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageGifItem;->generateShowAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 201
    :cond_1
    :goto_0
    return-void

    .line 184
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageGifItem;->mIndicator:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageGifItem;->mIndicator:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 185
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageGifItem;->mIndicator:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 186
    if-eqz p2, :cond_3

    .line 187
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageGifItem;->generateHideAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 188
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v1, Lcom/miui/gallery/ui/PhotoPageGifItem$3;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/PhotoPageGifItem$3;-><init>(Lcom/miui/gallery/ui/PhotoPageGifItem;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 196
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageGifItem;->mIndicator:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 198
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_3
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageGifItem;->mIndicator:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setPlayIconVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 208
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageGifItem;->needShowPlayIcon()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageGifItem;->mPlayIcon:Landroid/view/View;

    if-nez v0, :cond_0

    .line 210
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageGifItem;->initPlayIcon()V

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageGifItem;->mPlayIcon:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 216
    :cond_1
    :goto_0
    return-void

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageGifItem;->mPlayIcon:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageGifItem;->mPlayIcon:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private tryPlayGif()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 245
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageGifItem;->cancelGifDecoder()V

    .line 246
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageGifItem;->isOriginFileExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/PhotoPageGifItem;->setPlayIconVisible(Z)V

    .line 249
    invoke-direct {p0, v1, v1}, Lcom/miui/gallery/ui/PhotoPageGifItem;->setIndicatorVisible(ZZ)V

    .line 250
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/ui/PhotoPageGifItem$GifJob;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageGifItem;->mDataItem:Lcom/miui/gallery/model/BaseDataItem;

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageGifItem;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v3}, Lcom/miui/gallery/ui/PhotoPageGifItem$GifJob;-><init>(Lcom/miui/gallery/ui/PhotoPageGifItem;Lcom/miui/gallery/model/BaseDataItem;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageGifItem;->mGifFuture:Lcom/miui/gallery/threadpool/Future;

    .line 255
    :goto_0
    return-void

    .line 252
    :cond_0
    invoke-direct {p0, v2}, Lcom/miui/gallery/ui/PhotoPageGifItem;->setPlayIconVisible(Z)V

    .line 253
    invoke-direct {p0, v2, v1}, Lcom/miui/gallery/ui/PhotoPageGifItem;->setIndicatorVisible(ZZ)V

    goto :goto_0
.end method


# virtual methods
.method public animEnter(Lcom/miui/gallery/util/photoview/ItemViewInfo;Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;)V
    .locals 2
    .param p1, "enterInfo"    # Lcom/miui/gallery/util/photoview/ItemViewInfo;
    .param p2, "listener"    # Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;

    .prologue
    const/4 v1, 0x0

    .line 400
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageGifItem$5;

    invoke-direct {v0, p0, p2}, Lcom/miui/gallery/ui/PhotoPageGifItem$5;-><init>(Lcom/miui/gallery/ui/PhotoPageGifItem;Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;)V

    .line 406
    .local v0, "tempListener":Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;
    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/PhotoPageGifItem;->setPlayIconVisible(Z)V

    .line 407
    invoke-direct {p0, v1, v1}, Lcom/miui/gallery/ui/PhotoPageGifItem;->setIndicatorVisible(ZZ)V

    .line 408
    invoke-super {p0, p1, v0}, Lcom/miui/gallery/ui/PhotoPageItem;->animEnter(Lcom/miui/gallery/util/photoview/ItemViewInfo;Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;)V

    .line 409
    return-void
.end method

.method public animExit(Lcom/miui/gallery/util/photoview/ItemViewInfo;Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;)V
    .locals 1
    .param p1, "exitInfo"    # Lcom/miui/gallery/util/photoview/ItemViewInfo;
    .param p2, "listener"    # Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;

    .prologue
    const/4 v0, 0x0

    .line 413
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageGifItem;->cancelGifDecoder()V

    .line 414
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageGifItem;->setPlayIconVisible(Z)V

    .line 415
    invoke-direct {p0, v0, v0}, Lcom/miui/gallery/ui/PhotoPageGifItem;->setIndicatorVisible(ZZ)V

    .line 416
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageItem;->animExit(Lcom/miui/gallery/util/photoview/ItemViewInfo;Lcom/miui/gallery/ui/PhotoPageItem$TransitionListener;)V

    .line 417
    return-void
.end method

.method protected createDownloadManager()Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;
    .locals 2

    .prologue
    .line 324
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageGifItem$GifDownloadManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/ui/PhotoPageGifItem$GifDownloadManager;-><init>(Lcom/miui/gallery/ui/PhotoPageGifItem;Lcom/miui/gallery/ui/PhotoPageGifItem$1;)V

    return-object v0
.end method

.method protected doOnMatrixChanged(Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem;->doOnMatrixChanged(Landroid/graphics/RectF;)V

    .line 117
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageGifItem;->adjustIndicatorLocation()V

    .line 118
    return-void
.end method

.method protected doOnSelected(ZZZ)V
    .locals 0
    .param p1, "resumed"    # Z
    .param p2, "enter"    # Z
    .param p3, "init"    # Z

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageGifItem;->tryPlayGif()V

    .line 241
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/ui/PhotoPageItem;->doOnSelected(ZZZ)V

    .line 242
    return-void
.end method

.method protected doOnUnSelected(Z)V
    .locals 1
    .param p1, "paused"    # Z

    .prologue
    const/4 v0, 0x0

    .line 259
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem;->doOnUnSelected(Z)V

    .line 260
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageGifItem;->cancelGifDecoder()V

    .line 261
    invoke-direct {p0, v0, v0}, Lcom/miui/gallery/ui/PhotoPageGifItem;->setIndicatorVisible(ZZ)V

    .line 262
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PhotoPageGifItem;->setPlayIconVisible(Z)V

    .line 263
    return-void
.end method

.method protected generateHideAnimation()Landroid/view/animation/Animation;
    .locals 4

    .prologue
    .line 157
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 158
    .local v0, "alpha":Landroid/view/animation/Animation;
    new-instance v1, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 159
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 160
    return-object v0
.end method

.method protected generateShowAnimation()Landroid/view/animation/Animation;
    .locals 4

    .prologue
    .line 150
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 151
    .local v0, "alpha":Landroid/view/animation/Animation;
    new-instance v1, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 152
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 153
    return-object v0
.end method

.method public getGifUpdateListener()Lcom/miui/gallery/util/gifdecoder/NSGifDecode$GifFrameUpdateListener;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageGifItem;->mGifListener:Lcom/miui/gallery/util/gifdecoder/NSGifDecode$GifFrameUpdateListener;

    if-nez v0, :cond_0

    .line 220
    new-instance v0, Lcom/miui/gallery/ui/PhotoPageGifItem$4;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/PhotoPageGifItem$4;-><init>(Lcom/miui/gallery/ui/PhotoPageGifItem;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageGifItem;->mGifListener:Lcom/miui/gallery/util/gifdecoder/NSGifDecode$GifFrameUpdateListener;

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageGifItem;->mGifListener:Lcom/miui/gallery/util/gifdecoder/NSGifDecode$GifFrameUpdateListener;

    return-object v0
.end method

.method public onActionBarVisibleChanged(Ljava/lang/Boolean;I)V
    .locals 2
    .param p1, "visible"    # Ljava/lang/Boolean;
    .param p2, "actionBarHeight"    # I

    .prologue
    .line 122
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageItem;->onActionBarVisibleChanged(Ljava/lang/Boolean;I)V

    .line 123
    iput p2, p0, Lcom/miui/gallery/ui/PhotoPageGifItem;->mActionBarHeight:I

    .line 124
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/ui/PhotoPageGifItem;->setIndicatorVisible(ZZ)V

    .line 125
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageGifItem;->cancelGifDecoder()V

    .line 268
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->onDetachedFromWindow()V

    .line 269
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 111
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoPageItem;->onFinishInflate()V

    .line 112
    return-void
.end method
