.class public Lcom/miui/gallery/video/editor/adapter/AudioViewHolder;
.super Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter$SingleChoiceViewHolder;
.source "AudioViewHolder.java"


# static fields
.field private static mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;


# instance fields
.field private mDownloadView:Lcom/miui/gallery/video/editor/widget/DownloadView;

.field private mIcon:Landroid/widget/ImageView;

.field private mImageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

.field private mNameTextView:Landroid/widget/TextView;

.field private mSelected:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/miui/gallery/video/editor/util/ImageLoaderUtils;->mVideoEditorDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    sput-object v0, Lcom/miui/gallery/video/editor/adapter/AudioViewHolder;->mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter$SingleChoiceViewHolder;-><init>(Landroid/view/View;)V

    .line 28
    const v0, 0x7f1201e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/video/editor/adapter/AudioViewHolder;->mNameTextView:Landroid/widget/TextView;

    .line 29
    const v0, 0x7f1201e1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/video/editor/adapter/AudioViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 30
    const v0, 0x7f1201e4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/video/editor/widget/DownloadView;

    iput-object v0, p0, Lcom/miui/gallery/video/editor/adapter/AudioViewHolder;->mDownloadView:Lcom/miui/gallery/video/editor/widget/DownloadView;

    .line 31
    const v0, 0x7f1201e3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/adapter/AudioViewHolder;->mSelected:Landroid/view/View;

    .line 32
    new-instance v0, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/adapter/AudioViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/adapter/AudioViewHolder;->mImageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    .line 33
    return-void
.end method


# virtual methods
.method public setIcon(I)V
    .locals 1
    .param p1, "drawableId"    # I

    .prologue
    .line 62
    if-eqz p1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/AudioViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    :cond_0
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/video/editor/adapter/AudioViewHolder;->mImageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    sget-object v2, Lcom/miui/gallery/video/editor/adapter/AudioViewHolder;->mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0, p1, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 71
    :cond_0
    return-void
.end method

.method public setName(I)V
    .locals 1
    .param p1, "nameResId"    # I

    .prologue
    .line 39
    if-eqz p1, :cond_0

    .line 40
    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/AudioViewHolder;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 42
    :cond_0
    return-void
.end method

.method public setSelect(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 36
    return-void
.end method

.method public setStateImage(I)V
    .locals 1
    .param p1, "downloadState"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/AudioViewHolder;->mDownloadView:Lcom/miui/gallery/video/editor/widget/DownloadView;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/video/editor/widget/DownloadView;->setStateImage(I)V

    .line 46
    return-void
.end method

.method public updateSelected(ZZ)V
    .locals 3
    .param p1, "selected"    # Z
    .param p2, "exist"    # Z

    .prologue
    .line 48
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 49
    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/AudioViewHolder;->mSelected:Landroid/view/View;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/util/ToolsUtil;->showView(Landroid/view/View;)V

    .line 50
    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/AudioViewHolder;->mNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/adapter/AudioViewHolder;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/AudioViewHolder;->mSelected:Landroid/view/View;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/util/ToolsUtil;->hideView(Landroid/view/View;)V

    .line 53
    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/AudioViewHolder;->mNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/adapter/AudioViewHolder;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
