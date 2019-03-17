.class public Lcom/miui/gallery/movie/ui/view/DownloadView;
.super Landroid/widget/RelativeLayout;
.source "DownloadView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/movie/ui/view/DownloadView$MyAnimalListener;
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
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/view/DownloadView;->initView()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/view/DownloadView;->initView()V

    .line 39
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/movie/ui/view/DownloadView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/view/DownloadView;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/DownloadView;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/movie/ui/view/DownloadView;Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/view/DownloadView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/movie/ui/view/DownloadView;->hide(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/gallery/movie/ui/view/DownloadView;Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/movie/ui/view/DownloadView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/movie/ui/view/DownloadView;->show(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private doDownloading()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/DownloadView;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f0201d6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 50
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/view/DownloadView;->rotation()V

    .line 51
    return-void
.end method

.method private hide(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    const/4 v6, 0x2

    .line 122
    const-string v4, "alpha"

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 123
    .local v1, "valuesHolderAlpha":Landroid/animation/PropertyValuesHolder;
    const-string v4, "scaleX"

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 124
    .local v2, "valuesHolderScaleX":Landroid/animation/PropertyValuesHolder;
    const-string v4, "scaleY"

    new-array v5, v6, [F

    fill-array-data v5, :array_2

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 125
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

    .line 126
    .local v0, "objectAnimator":Landroid/animation/ObjectAnimator;
    if-eqz p2, :cond_0

    .line 127
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 129
    :cond_0
    new-instance v4, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v4}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 130
    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 131
    return-void

    .line 122
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 123
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    .line 124
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

    .line 42
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/view/DownloadView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/gallery/movie/ui/view/DownloadView;->mImageView:Landroid/widget/ImageView;

    .line 43
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/view/DownloadView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v3, v3}, Lcom/miui/gallery/movie/ui/view/DownloadView;->addView(Landroid/view/View;II)V

    .line 44
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/view/DownloadView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 45
    .local v0, "lps":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 46
    return-void
.end method

.method private rotation()V
    .locals 4

    .prologue
    .line 134
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/DownloadView;->mRotationAnimal:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/DownloadView;->mRotationAnimal:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/DownloadView;->mImageView:Landroid/widget/ImageView;

    const-string v1, "rotation"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/view/DownloadView;->mRotationAnimal:Landroid/animation/ObjectAnimator;

    .line 138
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/DownloadView;->mRotationAnimal:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 139
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/DownloadView;->mRotationAnimal:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 140
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/DownloadView;->mRotationAnimal:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 141
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/DownloadView;->mRotationAnimal:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 142
    return-void

    .line 137
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

    .line 109
    const-string v4, "alpha"

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 110
    .local v1, "valuesHolderAlpha":Landroid/animation/PropertyValuesHolder;
    const-string v4, "scaleX"

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 111
    .local v2, "valuesHolderScaleX":Landroid/animation/PropertyValuesHolder;
    const-string v4, "scaleY"

    new-array v5, v6, [F

    fill-array-data v5, :array_2

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 113
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

    .line 114
    .local v0, "objectAnimator":Landroid/animation/ObjectAnimator;
    if-eqz p2, :cond_0

    .line 115
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 117
    :cond_0
    new-instance v4, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v4}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 118
    const-wide/16 v4, 0x15e

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 119
    return-void

    .line 109
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 110
    :array_1
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    .line 111
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
    .line 75
    invoke-super {p0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 76
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/DownloadView;->mRotationAnimal:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/DownloadView;->mRotationAnimal:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/movie/ui/view/DownloadView;->mRotationAnimal:Landroid/animation/ObjectAnimator;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/DownloadView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 81
    return-void
.end method

.method public endDownloading()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/DownloadView;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/gallery/movie/ui/view/DownloadView$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/movie/ui/view/DownloadView$1;-><init>(Lcom/miui/gallery/movie/ui/view/DownloadView;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/movie/ui/view/DownloadView;->hide(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    .line 71
    return-void
.end method

.method public setStateImage(I)V
    .locals 2
    .param p1, "downloadState"    # I

    .prologue
    const v1, 0x7f0201d4

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/view/DownloadView;->clearAnimation()V

    .line 85
    sparse-switch p1, :sswitch_data_0

    .line 106
    :goto_0
    return-void

    .line 87
    :sswitch_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/miui/gallery/movie/ui/view/DownloadView;->setVisibility(I)V

    goto :goto_0

    .line 90
    :sswitch_1
    invoke-virtual {p0, v0}, Lcom/miui/gallery/movie/ui/view/DownloadView;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/DownloadView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 94
    :sswitch_2
    invoke-virtual {p0, v0}, Lcom/miui/gallery/movie/ui/view/DownloadView;->setVisibility(I)V

    .line 95
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/view/DownloadView;->doDownloading()V

    goto :goto_0

    .line 98
    :sswitch_3
    invoke-virtual {p0, v0}, Lcom/miui/gallery/movie/ui/view/DownloadView;->setVisibility(I)V

    .line 99
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/view/DownloadView;->endDownloading()V

    goto :goto_0

    .line 102
    :sswitch_4
    invoke-virtual {p0, v0}, Lcom/miui/gallery/movie/ui/view/DownloadView;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/DownloadView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 85
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
