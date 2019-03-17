.class public Lcom/miui/gallery/video/editor/adapter/TextViewHolder;
.super Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter$SingleChoiceViewHolder;
.source "TextViewHolder.java"


# static fields
.field private static mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;


# instance fields
.field private mDownloadView:Lcom/miui/gallery/video/editor/widget/DownloadView;

.field private mIcon:Landroid/widget/ImageView;

.field private mImageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

.field private mSelectBackground:Landroid/view/View;

.field private mSelected:Landroid/view/View;

.field private mTextEditable:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/miui/gallery/video/editor/util/ImageLoaderUtils;->mVideoEditorDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    sput-object v0, Lcom/miui/gallery/video/editor/adapter/TextViewHolder;->mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter$SingleChoiceViewHolder;-><init>(Landroid/view/View;)V

    .line 29
    const v0, 0x7f1202dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/video/editor/adapter/TextViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 30
    new-instance v0, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    iget-object v1, p0, Lcom/miui/gallery/video/editor/adapter/TextViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/miui/gallery/video/editor/adapter/TextViewHolder;->mImageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    .line 31
    const v0, 0x7f1201e4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/video/editor/widget/DownloadView;

    iput-object v0, p0, Lcom/miui/gallery/video/editor/adapter/TextViewHolder;->mDownloadView:Lcom/miui/gallery/video/editor/widget/DownloadView;

    .line 32
    const v0, 0x7f120171

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/adapter/TextViewHolder;->mSelected:Landroid/view/View;

    .line 33
    const v0, 0x7f1202df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/video/editor/adapter/TextViewHolder;->mTextEditable:Landroid/widget/ImageView;

    .line 34
    const v0, 0x7f1202de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/adapter/TextViewHolder;->mSelectBackground:Landroid/view/View;

    .line 35
    return-void
.end method


# virtual methods
.method public setIcon(I)V
    .locals 1
    .param p1, "drawableId"    # I

    .prologue
    .line 38
    if-eqz p1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/TextViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 41
    :cond_0
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/video/editor/adapter/TextViewHolder;->mImageAware:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    sget-object v2, Lcom/miui/gallery/video/editor/adapter/TextViewHolder;->mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0, p1, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 47
    :cond_0
    return-void
.end method

.method public setSelect(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 72
    return-void
.end method

.method public setStateImage(I)V
    .locals 1
    .param p1, "downloadState"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/TextViewHolder;->mDownloadView:Lcom/miui/gallery/video/editor/widget/DownloadView;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/video/editor/widget/DownloadView;->setStateImage(I)V

    .line 51
    return-void
.end method

.method public updateSelected(ZZ)V
    .locals 1
    .param p1, "selected"    # Z
    .param p2, "exist"    # Z

    .prologue
    .line 54
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 55
    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/TextViewHolder;->mSelected:Landroid/view/View;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/util/ToolsUtil;->showView(Landroid/view/View;)V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/TextViewHolder;->mSelected:Landroid/view/View;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/util/ToolsUtil;->hideView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public updateTextEditable(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 62
    if-eqz p1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/TextViewHolder;->mTextEditable:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/util/ToolsUtil;->showView(Landroid/view/View;)V

    .line 64
    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/TextViewHolder;->mSelectBackground:Landroid/view/View;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/util/ToolsUtil;->showView(Landroid/view/View;)V

    .line 69
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/TextViewHolder;->mTextEditable:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/util/ToolsUtil;->hideView(Landroid/view/View;)V

    .line 67
    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/TextViewHolder;->mSelectBackground:Landroid/view/View;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/util/ToolsUtil;->hideView(Landroid/view/View;)V

    goto :goto_0
.end method
