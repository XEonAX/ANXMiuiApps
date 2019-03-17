.class Lcom/miui/gallery/ui/IgnorePeoplePageFragment$1;
.super Ljava/lang/Object;
.source "IgnorePeoplePageFragment.java"

# interfaces
.implements Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$OnRecoveryButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/IgnorePeoplePageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/IgnorePeoplePageFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/IgnorePeoplePageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/IgnorePeoplePageFragment;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$1;->this$0:Lcom/miui/gallery/ui/IgnorePeoplePageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPeopleRecoveryButtonClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/RectF;)V
    .locals 14
    .param p1, "localId"    # Ljava/lang/String;
    .param p2, "serverId"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "thumbnail"    # Ljava/lang/String;
    .param p5, "facePosition"    # Landroid/graphics/RectF;

    .prologue
    .line 85
    iget-object v1, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$1;->this$0:Lcom/miui/gallery/ui/IgnorePeoplePageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040098

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    .line 87
    .local v13, "dialogView":Landroid/view/View;
    new-instance v11, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$1;->this$0:Lcom/miui/gallery/ui/IgnorePeoplePageFragment;

    iget-object v1, v1, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v11, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 88
    .local v11, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$1;->this$0:Lcom/miui/gallery/ui/IgnorePeoplePageFragment;

    invoke-virtual {v11, v13}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    const/4 v5, 0x0

    .line 89
    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    const/4 v5, 0x0

    .line 90
    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 91
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 88
    invoke-static {v1, v2}, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->access$002(Lcom/miui/gallery/ui/IgnorePeoplePageFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 92
    const v1, 0x7f120199

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 93
    .local v12, "cover":Landroid/widget/ImageView;
    new-instance v1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    const/4 v2, 0x1

    .line 94
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheThumbnail(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 95
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->loadFromMicroCache(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 96
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 97
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    const v2, 0x7f0200df

    .line 98
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 99
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 100
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 101
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    new-instance v2, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer;

    invoke-direct {v2}, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer;-><init>()V

    .line 102
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 103
    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->usingRegionDecoderFace(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    .line 104
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v4

    .line 105
    .local v4, "displayImageOptions":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    invoke-direct {v3, v12}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    .line 106
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v5

    iget-object v5, v5, Lcom/miui/gallery/Config$ThumbConfig;->sMicroTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v8, p5

    .line 105
    invoke-virtual/range {v1 .. v8}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Landroid/graphics/RectF;)V

    .line 107
    iget-object v1, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$1;->this$0:Lcom/miui/gallery/ui/IgnorePeoplePageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->access$000(Lcom/miui/gallery/ui/IgnorePeoplePageFragment;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 108
    iget-object v1, p0, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$1;->this$0:Lcom/miui/gallery/ui/IgnorePeoplePageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/IgnorePeoplePageFragment;->access$000(Lcom/miui/gallery/ui/IgnorePeoplePageFragment;)Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v7

    .line 109
    .local v7, "positiveButton":Landroid/widget/Button;
    new-instance v5, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$1$1;

    move-object v6, p0

    move-object v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/miui/gallery/ui/IgnorePeoplePageFragment$1$1;-><init>(Lcom/miui/gallery/ui/IgnorePeoplePageFragment$1;Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    return-void
.end method
