.class public Lcom/miui/gallery/video/editor/widget/DownloadView;
.super Landroid/widget/RelativeLayout;
.source "DownloadView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/video/editor/widget/DownloadView$MyAnimalListener;
    }
.end annotation


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private mRotationAnimal:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/DownloadView;->initView()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/DownloadView;->initView()V

    .line 38
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/video/editor/widget/DownloadView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/widget/DownloadView;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DownloadView;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/video/editor/widget/DownloadView;Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/widget/DownloadView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/video/editor/widget/DownloadView;->hide(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/gallery/video/editor/widget/DownloadView;Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/video/editor/widget/DownloadView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/video/editor/widget/DownloadView;->show(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private doDownloading()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DownloadView;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f020330

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/DownloadView;->rotation()V

    .line 49
    return-void
.end method

.method private hide(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    const/4 v6, 0x2

    .line 119
    const-string v4, "alpha"

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 120
    .local v1, "valuesHolderAlpha":Landroid/animation/PropertyValuesHolder;
    const-string v4, "scaleX"

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 121
    .local v2, "valuesHolderScaleX":Landroid/animation/PropertyValuesHolder;
    const-string v4, "scaleY"

    new-array v5, v6, [F

    fill-array-data v5, :array_2

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 122
    .local v3, "valuesHolderScaleY":Landroid/animation/PropertyValuesHolder;
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    aput-object v3, v4, v6

    invoke-static {p1, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 123
    .local v0, "objectAnimator":Landroid/animation/ObjectAnimator;
    if-eqz p2, :cond_0

    .line 124
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 126
    :cond_0
    new-instance v4, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v4}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 127
    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 128
    return-void

    .line 119
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 120
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    .line 121
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data
.end method

.method private initView()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 41
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/DownloadView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/gallery/video/editor/widget/DownloadView;->mImageView:Landroid/widget/ImageView;

    .line 42
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/DownloadView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v3, v3}, Lcom/miui/gallery/video/editor/widget/DownloadView;->addView(Landroid/view/View;II)V

    .line 43
    iget-object v1, p0, Lcom/miui/gallery/video/editor/widget/DownloadView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 44
    .local v0, "lps":Landroid/widget/RelativeLayout$LayoutParams;
    return-void
.end method

.method private rotation()V
    .locals 4

    .prologue
    .line 131
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DownloadView;->mRotationAnimal:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DownloadView;->mRotationAnimal:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DownloadView;->mImageView:Landroid/widget/ImageView;

    const-string v1, "rotation"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/widget/DownloadView;->mRotationAnimal:Landroid/animation/ObjectAnimator;

    .line 135
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DownloadView;->mRotationAnimal:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 136
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DownloadView;->mRotationAnimal:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 137
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DownloadView;->mRotationAnimal:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 138
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DownloadView;->mRotationAnimal:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 139
    return-void

    .line 134
    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method private show(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    const/4 v6, 0x2

    .line 107
    const-string v4, "alpha"

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 108
    .local v1, "valuesHolderAlpha":Landroid/animation/PropertyValuesHolder;
    const-string v4, "scaleX"

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 109
    .local v2, "valuesHolderScaleX":Landroid/animation/PropertyValuesHolder;
    const-string v4, "scaleY"

    new-array v5, v6, [F

    fill-array-data v5, :array_2

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 110
    .local v3, "valuesHolderScaleY":Landroid/animation/PropertyValuesHolder;
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    aput-object v3, v4, v6

    invoke-static {p1, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 111
    .local v0, "objectAnimator":Landroid/animation/ObjectAnimator;
    if-eqz p2, :cond_0

    .line 112
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 114
    :cond_0
    new-instance v4, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v4}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 115
    const-wide/16 v4, 0x15e

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 116
    return-void

    .line 107
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 108
    :array_1
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    .line 109
    :array_2
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public clearAnimation()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 74
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DownloadView;->mRotationAnimal:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DownloadView;->mRotationAnimal:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/widget/DownloadView;->mRotationAnimal:Landroid/animation/ObjectAnimator;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DownloadView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 79
    return-void
.end method

.method public endDownloading()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DownloadView;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/gallery/video/editor/widget/DownloadView$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/video/editor/widget/DownloadView$1;-><init>(Lcom/miui/gallery/video/editor/widget/DownloadView;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/video/editor/widget/DownloadView;->hide(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    .line 69
    return-void
.end method

.method public setStateImage(I)V
    .locals 2
    .param p1, "downloadState"    # I

    .prologue
    const v1, 0x7f02032e

    const/4 v0, 0x0

    .line 82
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/DownloadView;->clearAnimation()V

    .line 83
    sparse-switch p1, :sswitch_data_0

    .line 104
    :goto_0
    return-void

    .line 85
    :sswitch_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/widget/DownloadView;->setVisibility(I)V

    goto :goto_0

    .line 88
    :sswitch_1
    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/widget/DownloadView;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DownloadView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 92
    :sswitch_2
    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/widget/DownloadView;->setVisibility(I)V

    .line 93
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/DownloadView;->doDownloading()V

    goto :goto_0

    .line 96
    :sswitch_3
    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/widget/DownloadView;->setVisibility(I)V

    .line 97
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/widget/DownloadView;->endDownloading()V

    goto :goto_0

    .line 100
    :sswitch_4
    invoke-virtual {p0, v0}, Lcom/miui/gallery/video/editor/widget/DownloadView;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/miui/gallery/video/editor/widget/DownloadView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 83
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x11 -> :sswitch_0
        0x12 -> :sswitch_2
        0x13 -> :sswitch_1
        0x14 -> :sswitch_4
    .end sparse-switch
.end method
