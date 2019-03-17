.class public Lcom/miui/gallery/editor/photo/app/PreviewFragment;
.super Landroid/app/Fragment;
.source "PreviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/app/PreviewFragment$OnViewReadyListener;,
        Lcom/miui/gallery/editor/photo/app/PreviewFragment$Callbacks;,
        Lcom/miui/gallery/editor/photo/app/PreviewFragment$OnPreDrawListener;
    }
.end annotation


# instance fields
.field mCallbacks:Lcom/miui/gallery/editor/photo/app/PreviewFragment$Callbacks;

.field private mCompareBtn:Landroid/widget/Button;

.field private mImageView:Lcom/miui/gallery/editor/photo/widgets/StrokeImageView;

.field private mIsOnExit:Z

.field private mLoadDone:Z

.field mOnViewReadyListener:Lcom/miui/gallery/editor/photo/app/PreviewFragment$OnViewReadyListener;

.field private mOverwriteBackground:Z

.field private mProgressView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->mLoadDone:Z

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->mIsOnExit:Z

    .line 165
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/app/PreviewFragment;)Lcom/miui/gallery/editor/photo/widgets/StrokeImageView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/PreviewFragment;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->mImageView:Lcom/miui/gallery/editor/photo/widgets/StrokeImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/editor/photo/app/PreviewFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/PreviewFragment;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->mCompareBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/editor/photo/app/PreviewFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/app/PreviewFragment;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->mIsOnExit:Z

    return v0
.end method


# virtual methods
.method public enableComparison(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 84
    if-eqz p1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->mCompareBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->mCompareBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->bringToFront()V

    .line 87
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->mCompareBtn:Landroid/widget/Button;

    new-instance v1, Lcom/miui/gallery/editor/photo/app/PreviewFragment$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/editor/photo/app/PreviewFragment$1;-><init>(Lcom/miui/gallery/editor/photo/app/PreviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->mCompareBtn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    const v2, 0x7f04010e

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 48
    .local v0, "layout":Landroid/widget/FrameLayout;
    const v2, 0x7f120170

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/editor/photo/widgets/StrokeImageView;

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->mImageView:Lcom/miui/gallery/editor/photo/widgets/StrokeImageView;

    .line 49
    const v2, 0x7f120154

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->mCompareBtn:Landroid/widget/Button;

    .line 50
    const v2, 0x7f1201e8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->mProgressView:Landroid/view/View;

    .line 52
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->mImageView:Lcom/miui/gallery/editor/photo/widgets/StrokeImageView;

    const v3, 0x7f0c073a

    invoke-static {v2, v3}, Lcom/miui/gallery/compat/view/ViewCompat;->setTransitionName(Landroid/view/View;I)V

    .line 53
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "overwrite_background"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->mOverwriteBackground:Z

    .line 56
    :cond_0
    iget-boolean v2, p0, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->mOverwriteBackground:Z

    if-eqz v2, :cond_1

    .line 57
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 58
    .local v1, "value":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010031

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 59
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->mImageView:Lcom/miui/gallery/editor/photo/widgets/StrokeImageView;

    iget v3, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/widgets/StrokeImageView;->setBackgroundColor(I)V

    .line 61
    .end local v1    # "value":Landroid/util/TypedValue;
    :cond_1
    return-object v0
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 151
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 152
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->mImageView:Lcom/miui/gallery/editor/photo/widgets/StrokeImageView;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->mImageView:Lcom/miui/gallery/editor/photo/widgets/StrokeImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/widgets/StrokeImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 155
    :cond_0
    return-void
.end method

.method public onExit(Z)V
    .locals 4
    .param p1, "exported"    # Z

    .prologue
    .line 132
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->mIsOnExit:Z

    .line 133
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->mImageView:Lcom/miui/gallery/editor/photo/widgets/StrokeImageView;

    if-eqz v2, :cond_0

    .line 134
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->mImageView:Lcom/miui/gallery/editor/photo/widgets/StrokeImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/miui/gallery/editor/photo/widgets/StrokeImageView;->setStrokeVisible(Z)V

    .line 136
    if-nez p1, :cond_0

    .line 138
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->mCallbacks:Lcom/miui/gallery/editor/photo/app/PreviewFragment$Callbacks;

    invoke-interface {v2}, Lcom/miui/gallery/editor/photo/app/PreviewFragment$Callbacks;->onLoadPreview()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 139
    .local v1, "preview":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->mCallbacks:Lcom/miui/gallery/editor/photo/app/PreviewFragment$Callbacks;

    invoke-interface {v2}, Lcom/miui/gallery/editor/photo/app/PreviewFragment$Callbacks;->onLoadPreviewOriginal()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 140
    .local v0, "original":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 142
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 143
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->mImageView:Lcom/miui/gallery/editor/photo/widgets/StrokeImageView;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/editor/photo/widgets/StrokeImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 147
    .end local v0    # "original":Landroid/graphics/Bitmap;
    .end local v1    # "preview":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 77
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->mOnViewReadyListener:Lcom/miui/gallery/editor/photo/app/PreviewFragment$OnViewReadyListener;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->mImageView:Lcom/miui/gallery/editor/photo/widgets/StrokeImageView;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/widgets/StrokeImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/editor/photo/app/PreviewFragment$OnPreDrawListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/editor/photo/app/PreviewFragment$OnPreDrawListener;-><init>(Lcom/miui/gallery/editor/photo/app/PreviewFragment;Lcom/miui/gallery/editor/photo/app/PreviewFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->showForLoadDown()V

    .line 81
    return-void
.end method

.method public refreshPreview(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->mImageView:Lcom/miui/gallery/editor/photo/widgets/StrokeImageView;

    new-instance v1, Lcom/miui/gallery/editor/photo/app/PreviewFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/editor/photo/app/PreviewFragment$2;-><init>(Lcom/miui/gallery/editor/photo/app/PreviewFragment;Landroid/graphics/Bitmap;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/gallery/editor/photo/widgets/StrokeImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 114
    return-void
.end method

.method public setLoadDone(Z)V
    .locals 0
    .param p1, "loadDone"    # Z

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->mLoadDone:Z

    .line 171
    return-void
.end method

.method public showForLoadDown()V
    .locals 2

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->mLoadDone:Z

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->mImageView:Lcom/miui/gallery/editor/photo/widgets/StrokeImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/widgets/StrokeImageView;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->mImageView:Lcom/miui/gallery/editor/photo/widgets/StrokeImageView;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->mCallbacks:Lcom/miui/gallery/editor/photo/app/PreviewFragment$Callbacks;

    invoke-interface {v1}, Lcom/miui/gallery/editor/photo/app/PreviewFragment$Callbacks;->onLoadPreview()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/widgets/StrokeImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 69
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->mCallbacks:Lcom/miui/gallery/editor/photo/app/PreviewFragment$Callbacks;

    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/app/PreviewFragment$Callbacks;->isPreviewChanged()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->enableComparison(Z)V

    .line 70
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/PreviewFragment;->mProgressView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    :cond_0
    return-void
.end method
