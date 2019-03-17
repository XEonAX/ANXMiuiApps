.class Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TypeFaceHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "TypeFaceHolder.java"


# static fields
.field private static sDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;


# instance fields
.field private mDownloadView:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;

.field private mImageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

.field private mNameImage:Landroid/widget/ImageView;

.field private mNameText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 25
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_INT:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 26
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 27
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheBigPhoto(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 28
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TypeFaceHolder;->sDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 23
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040157

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 37
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TypeFaceHolder;->itemView:Landroid/view/View;

    const v1, 0x7f1202ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TypeFaceHolder;->mNameText:Landroid/widget/TextView;

    .line 38
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TypeFaceHolder;->itemView:Landroid/view/View;

    const v1, 0x7f1202ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TypeFaceHolder;->mNameImage:Landroid/widget/ImageView;

    .line 39
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TypeFaceHolder;->itemView:Landroid/view/View;

    const v1, 0x7f1202ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TypeFaceHolder;->mDownloadView:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;

    .line 40
    new-instance v0, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TypeFaceHolder;->mNameImage:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TypeFaceHolder;->mImageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    .line 41
    return-void
.end method

.method private updateDownloadView(Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;)V
    .locals 2
    .param p1, "textStyle"    # Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TypeFaceHolder;->mDownloadView:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;

    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;->setStateImage(I)V

    .line 50
    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TypeFaceHolder;->mDownloadView:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;->setVisibility(I)V

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->isExtra()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TypeFaceHolder;->mDownloadView:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;

    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;->setStateImage(I)V

    .line 54
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TypeFaceHolder;->mDownloadView:Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;

    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->getFontSize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateNameView(Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;Z)V
    .locals 7
    .param p1, "textStyle"    # Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;
    .param p2, "isSelected"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x0

    .line 59
    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->isLocal()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 60
    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->getDefaultNameResId()I

    move-result v1

    .line 61
    .local v1, "resId":I
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TypeFaceHolder;->mNameText:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(I)V

    .line 62
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TypeFaceHolder;->mNameImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TypeFaceHolder;->mNameText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    .end local v1    # "resId":I
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->isExtra()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 65
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TypeFaceHolder;->mNameImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TypeFaceHolder;->mNameText:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    invoke-virtual {p1}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "iconUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 69
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TypeFaceHolder;->mImageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    sget-object v6, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TypeFaceHolder;->sDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v4, v0, v5, v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 71
    :cond_2
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TypeFaceHolder;->mNameImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1000e9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 72
    .local v2, "selectedColor":I
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TypeFaceHolder;->mNameImage:Landroid/widget/ImageView;

    if-eqz p2, :cond_3

    .end local v2    # "selectedColor":I
    :goto_1
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .restart local v2    # "selectedColor":I
    :cond_3
    move v2, v3

    goto :goto_1
.end method


# virtual methods
.method public bind(Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;Z)V
    .locals 0
    .param p1, "textStyle"    # Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;
    .param p2, "isSelected"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TypeFaceHolder;->updateNameView(Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;Z)V

    .line 45
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TypeFaceHolder;->updateDownloadView(Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;)V

    .line 46
    return-void
.end method
