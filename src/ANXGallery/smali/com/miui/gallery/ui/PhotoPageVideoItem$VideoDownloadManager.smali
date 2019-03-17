.class Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoDownloadManager;
.super Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;
.source "PhotoPageVideoItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageVideoItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoDownloadManager"
.end annotation


# instance fields
.field private mOriginProgressBar:Landroid/widget/ProgressBar;

.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageVideoItem;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/PhotoPageVideoItem;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoDownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageVideoItem;

    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;-><init>(Lcom/miui/gallery/ui/PhotoPageItem;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/PhotoPageVideoItem;Lcom/miui/gallery/ui/PhotoPageVideoItem$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/PhotoPageVideoItem;
    .param p2, "x1"    # Lcom/miui/gallery/ui/PhotoPageVideoItem$1;

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoDownloadManager;-><init>(Lcom/miui/gallery/ui/PhotoPageVideoItem;)V

    return-void
.end method

.method private initOriginProgressBar()Landroid/widget/ProgressBar;
    .locals 9

    .prologue
    const/16 v8, 0xd

    const/4 v7, -0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 272
    new-instance v1, Lcom/miui/gallery/widget/CircleStrokeProgressBar;

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoDownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageVideoItem;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/PhotoPageVideoItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/gallery/widget/CircleStrokeProgressBar;-><init>(Landroid/content/Context;)V

    .line 273
    .local v1, "progressBar":Lcom/miui/gallery/widget/CircleStrokeProgressBar;
    new-array v2, v6, [I

    const v3, 0x7f020213

    aput v3, v2, v5

    new-array v3, v6, [I

    const v4, 0x7f020215

    aput v4, v3, v5

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/miui/gallery/widget/CircleStrokeProgressBar;->setDrawablesForLevels([I[I[I)V

    .line 274
    new-array v2, v6, [I

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoDownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageVideoItem;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/PhotoPageVideoItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10004d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v2, v5

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoDownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageVideoItem;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/PhotoPageVideoItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0182

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/widget/CircleStrokeProgressBar;->setMiddleStrokeColors([IF)V

    .line 275
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 276
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 277
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 278
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/miui/gallery/widget/CircleStrokeProgressBar;->setVisibility(I)V

    .line 279
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoDownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageVideoItem;

    invoke-virtual {v2, v1, v0}, Lcom/miui/gallery/ui/PhotoPageVideoItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    return-object v1
.end method


# virtual methods
.method protected adjustProgressBarLocation(ZLandroid/graphics/RectF;Z)V
    .locals 2
    .param p1, "isActionBarVisible"    # Z
    .param p2, "imageRect"    # Landroid/graphics/RectF;
    .param p3, "anim"    # Z

    .prologue
    .line 297
    invoke-static {}, Lcom/miui/gallery/util/uil/CloudImageLoader;->getInstance()Lcom/miui/gallery/util/uil/CloudImageLoader;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoDownloadManager;->getCurDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/util/uil/CloudImageLoader;->isOrigin(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    :goto_0
    return-void

    .line 300
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->adjustProgressBarLocation(ZLandroid/graphics/RectF;Z)V

    goto :goto_0
.end method

.method protected doOnDownloaded(Lcom/miui/gallery/sdk/download/DownloadType;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 248
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->doOnDownloaded(Lcom/miui/gallery/sdk/download/DownloadType;Ljava/lang/String;)V

    .line 249
    invoke-static {}, Lcom/miui/gallery/util/uil/CloudImageLoader;->getInstance()Lcom/miui/gallery/util/uil/CloudImageLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/util/uil/CloudImageLoader;->isOrigin(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoDownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageVideoItem;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageVideoItem;->access$400(Lcom/miui/gallery/ui/PhotoPageVideoItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoDownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageVideoItem;

    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoPageVideoItem;->access$500(Lcom/miui/gallery/ui/PhotoPageVideoItem;)V

    .line 252
    :cond_0
    return-void
.end method

.method protected doOnProgressVisibilityChanged(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 256
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->doOnProgressVisibilityChanged(Z)V

    .line 257
    invoke-static {}, Lcom/miui/gallery/util/uil/CloudImageLoader;->getInstance()Lcom/miui/gallery/util/uil/CloudImageLoader;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoDownloadManager;->getCurDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/gallery/util/uil/CloudImageLoader;->isOrigin(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 258
    if-nez p1, :cond_1

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoDownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageVideoItem;

    invoke-static {v3}, Lcom/miui/gallery/ui/PhotoPageVideoItem;->access$400(Lcom/miui/gallery/ui/PhotoPageVideoItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 259
    .local v0, "isPendingPlay":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 260
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoDownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageVideoItem;

    if-nez p1, :cond_2

    :goto_1
    invoke-static {v3, v1}, Lcom/miui/gallery/ui/PhotoPageVideoItem;->access$600(Lcom/miui/gallery/ui/PhotoPageVideoItem;Z)V

    .line 264
    :goto_2
    if-eqz p1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoDownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageVideoItem;

    iget-object v1, v1, Lcom/miui/gallery/ui/PhotoPageVideoItem;->mEmptyView:Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/PhotoPageItem$EmptyView;->setVisible(Z)V

    .line 269
    .end local v0    # "isPendingPlay":Z
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 258
    goto :goto_0

    .restart local v0    # "isPendingPlay":Z
    :cond_2
    move v1, v2

    .line 260
    goto :goto_1

    .line 262
    :cond_3
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoDownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageVideoItem;

    if-nez p1, :cond_4

    :goto_3
    invoke-static {v3, v1}, Lcom/miui/gallery/ui/PhotoPageVideoItem;->access$200(Lcom/miui/gallery/ui/PhotoPageVideoItem;Z)V

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3
.end method

.method protected filterError(Lcom/miui/gallery/error/core/ErrorCode;)Z
    .locals 1
    .param p1, "code"    # Lcom/miui/gallery/error/core/ErrorCode;

    .prologue
    .line 313
    sget-object v0, Lcom/miui/gallery/error/core/ErrorCode;->DECODE_ERROR:Lcom/miui/gallery/error/core/ErrorCode;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoDownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageVideoItem;

    iget-object v0, v0, Lcom/miui/gallery/ui/PhotoPageVideoItem;->mPhotoView:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getErrorTip()Ljava/lang/CharSequence;
    .locals 6

    .prologue
    .line 317
    invoke-static {}, Lcom/miui/gallery/util/uil/CloudImageLoader;->getInstance()Lcom/miui/gallery/util/uil/CloudImageLoader;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoDownloadManager;->getCurDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/util/uil/CloudImageLoader;->isOrigin(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoDownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageVideoItem;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageVideoItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c016a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoDownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageVideoItem;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/PhotoPageVideoItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0330

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 320
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->getErrorTip()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method protected getProgressBar()Landroid/widget/ProgressBar;
    .locals 2

    .prologue
    .line 285
    invoke-static {}, Lcom/miui/gallery/util/uil/CloudImageLoader;->getInstance()Lcom/miui/gallery/util/uil/CloudImageLoader;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoDownloadManager;->getCurDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/util/uil/CloudImageLoader;->isOrigin(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoDownloadManager;->mOriginProgressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    .line 287
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoDownloadManager;->initOriginProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoDownloadManager;->mOriginProgressBar:Landroid/widget/ProgressBar;

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoDownloadManager;->mOriginProgressBar:Landroid/widget/ProgressBar;

    .line 291
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    goto :goto_0
.end method

.method public isProgressVisible()Z
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoDownloadManager;->mOriginProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoDownloadManager;->mOriginProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected needShowDownloadView()Z
    .locals 2

    .prologue
    .line 305
    invoke-static {}, Lcom/miui/gallery/util/uil/CloudImageLoader;->getInstance()Lcom/miui/gallery/util/uil/CloudImageLoader;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoDownloadManager;->getCurDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/util/uil/CloudImageLoader;->isOrigin(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoDownloadManager;->this$0:Lcom/miui/gallery/ui/PhotoPageVideoItem;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoPageVideoItem;->isInActionMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoPageVideoItem$VideoDownloadManager;->isDrawableDisplayInside()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 308
    :goto_0
    return v0

    .line 306
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 308
    :cond_1
    invoke-super {p0}, Lcom/miui/gallery/ui/PhotoPageItem$DownloadManager;->needShowDownloadView()Z

    move-result v0

    goto :goto_0
.end method
