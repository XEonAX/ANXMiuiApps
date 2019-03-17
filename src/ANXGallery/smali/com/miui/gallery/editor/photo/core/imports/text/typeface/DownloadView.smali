.class public Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;
.super Landroid/widget/LinearLayout;
.source "DownloadView.java"


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private mRotationAnimal:Landroid/animation/ObjectAnimator;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;->initView(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;->initView(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;Landroid/view/View;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/animation/AnimatorListenerAdapter;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;->hide(Landroid/view/View;Landroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;Landroid/view/View;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/animation/AnimatorListenerAdapter;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;->show(Landroid/view/View;Landroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method private doDownloading()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f020217

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 51
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;->rotation()V

    .line 52
    return-void
.end method

.method private endDownloading()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView$1;-><init>(Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;->hide(Landroid/view/View;Landroid/animation/AnimatorListenerAdapter;)V

    .line 79
    return-void
.end method

.method private hide(Landroid/view/View;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "listener"    # Landroid/animation/AnimatorListenerAdapter;

    .prologue
    const v2, 0x3f19999a    # 0.6f

    const/high16 v0, 0x3f800000    # 1.0f

    .line 120
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 121
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 122
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 123
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    .line 124
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 125
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const v0, 0x7f0400f2

    invoke-static {p1, v0, p0}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 44
    const v0, 0x7f120232

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;->mTextView:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f120233

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;->mImageView:Landroid/widget/ImageView;

    .line 47
    return-void
.end method

.method private rotation()V
    .locals 4

    .prologue
    .line 128
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;->mRotationAnimal:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;->mRotationAnimal:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;->mImageView:Landroid/widget/ImageView;

    const-string v1, "rotation"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;->mRotationAnimal:Landroid/animation/ObjectAnimator;

    .line 132
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;->mRotationAnimal:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 133
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;->mRotationAnimal:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 134
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;->mRotationAnimal:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 135
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;->mRotationAnimal:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 136
    return-void

    .line 131
    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method private show(Landroid/view/View;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "listener"    # Landroid/animation/AnimatorListenerAdapter;

    .prologue
    const v2, 0x3f19999a    # 0.6f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 112
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 113
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 114
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x15e

    .line 116
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 117
    return-void
.end method


# virtual methods
.method public clearAnimator()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;->mRotationAnimal:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;->mRotationAnimal:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;->mRotationAnimal:Landroid/animation/ObjectAnimator;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 87
    return-void
.end method

.method public setStateImage(I)V
    .locals 2
    .param p1, "downloadState"    # I

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;->clearAnimator()V

    .line 91
    sparse-switch p1, :sswitch_data_0

    .line 109
    :goto_0
    return-void

    .line 93
    :sswitch_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;->setVisibility(I)V

    goto :goto_0

    .line 96
    :sswitch_1
    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;->setVisibility(I)V

    .line 97
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;->doDownloading()V

    goto :goto_0

    .line 100
    :sswitch_2
    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;->setVisibility(I)V

    .line 101
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;->endDownloading()V

    goto :goto_0

    .line 105
    :sswitch_3
    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f02032e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 91
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x11 -> :sswitch_0
        0x12 -> :sswitch_1
        0x13 -> :sswitch_3
        0x14 -> :sswitch_3
    .end sparse-switch
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/DownloadView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    return-void
.end method
