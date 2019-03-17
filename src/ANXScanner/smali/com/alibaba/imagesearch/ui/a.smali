.class public Lcom/alibaba/imagesearch/ui/a;
.super Landroid/app/Dialog;


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/View;

.field private e:Landroid/view/ViewGroup;

.field private f:Landroid/view/animation/Animation;

.field private g:Landroid/view/animation/LayoutAnimationController;

.field private h:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View$OnClickListener;)V
    .locals 2

    const-string v0, "style"

    const-string v1, "com_taobao_tae_sdk_pailitao_LoadingDialog"

    invoke-static {p1, v0, v1}, Lcom/alibaba/imagesearch/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/alibaba/imagesearch/ui/a;->h:Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/imagesearch/ui/a;->setCanceledOnTouchOutside(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/imagesearch/ui/a;->setCancelable(Z)V

    invoke-direct {p0, p2}, Lcom/alibaba/imagesearch/ui/a;->a(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private a(IIILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .locals 7

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    new-instance v0, Landroid/view/animation/RotateAnimation;

    int-to-float v1, p1

    int-to-float v2, p2

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    int-to-long v4, p3

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {v0, p4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartTime(J)V

    return-object v0
.end method

.method private a(Landroid/view/View$OnClickListener;)V
    .locals 4

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/a;->h:Landroid/app/Activity;

    const-string v1, "layout"

    const-string v2, "com_alibaba_imagesearch_loading_dialog"

    invoke-static {v0, v1, v2}, Lcom/alibaba/imagesearch/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/imagesearch/ui/a;->setContentView(I)V

    invoke-virtual {p0}, Lcom/alibaba/imagesearch/ui/a;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/imagesearch/ui/a;->h:Landroid/app/Activity;

    const-string v2, "anim"

    const-string v3, "com_alibaba_imagesearch_anim_loading"

    invoke-static {v1, v2, v3}, Lcom/alibaba/imagesearch/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/imagesearch/ui/a;->f:Landroid/view/animation/Animation;

    new-instance v0, Landroid/view/animation/LayoutAnimationController;

    iget-object v1, p0, Lcom/alibaba/imagesearch/ui/a;->f:Landroid/view/animation/Animation;

    invoke-direct {v0, v1}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    iput-object v0, p0, Lcom/alibaba/imagesearch/ui/a;->g:Landroid/view/animation/LayoutAnimationController;

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/a;->g:Landroid/view/animation/LayoutAnimationController;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/view/animation/LayoutAnimationController;->setDelay(F)V

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/a;->g:Landroid/view/animation/LayoutAnimationController;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/LayoutAnimationController;->setOrder(I)V

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/a;->h:Landroid/app/Activity;

    const-string v1, "id"

    const-string v2, "feis_goods_container"

    invoke-static {v0, v1, v2}, Lcom/alibaba/imagesearch/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/imagesearch/ui/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alibaba/imagesearch/ui/a;->e:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/a;->h:Landroid/app/Activity;

    const-string v1, "id"

    const-string v2, "feis_loading_layout"

    invoke-static {v0, v1, v2}, Lcom/alibaba/imagesearch/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/imagesearch/ui/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alibaba/imagesearch/ui/a;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/a;->h:Landroid/app/Activity;

    const-string v1, "id"

    const-string v2, "feis_loading_progress"

    invoke-static {v0, v1, v2}, Lcom/alibaba/imagesearch/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/imagesearch/ui/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/imagesearch/ui/a;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/a;->h:Landroid/app/Activity;

    const-string v1, "id"

    const-string v2, "feis_loading_tip"

    invoke-static {v0, v1, v2}, Lcom/alibaba/imagesearch/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/imagesearch/ui/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/imagesearch/ui/a;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/a;->h:Landroid/app/Activity;

    const-string v1, "id"

    const-string v2, "feis_loading_cancel"

    invoke-static {v0, v1, v2}, Lcom/alibaba/imagesearch/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/imagesearch/ui/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/imagesearch/ui/a;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/a;->d:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public setTitle(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/alibaba/imagesearch/ui/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/imagesearch/ui/a;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/a;->b:Landroid/widget/ImageView;

    const/16 v1, 0x168

    const/16 v2, 0x320

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-direct {p0, v4, v1, v2, v3}, Lcom/alibaba/imagesearch/ui/a;->a(IIILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/a;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/a;->e:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alibaba/imagesearch/ui/a;->g:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    return-void
.end method
