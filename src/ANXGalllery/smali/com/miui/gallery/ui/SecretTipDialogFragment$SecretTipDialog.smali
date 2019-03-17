.class Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;
.super Landroid/app/Dialog;
.source "SecretTipDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/SecretTipDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecretTipDialog"
.end annotation


# instance fields
.field private mAnimationCanceled:Z

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mContentContainer:Landroid/view/View;

.field private mContentPaddingUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mPositiveBtn:Landroid/widget/Button;

.field private mPositiveListener:Landroid/view/View$OnClickListener;

.field private mPressIndicator:Landroid/view/View;

.field final synthetic this$0:Lcom/miui/gallery/ui/SecretTipDialogFragment;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/SecretTipDialogFragment;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->this$0:Lcom/miui/gallery/ui/SecretTipDialogFragment;

    .line 106
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->mAnimationCanceled:Z

    .line 238
    new-instance v0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog$2;-><init>(Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->mContentPaddingUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 107
    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->mAnimationCanceled:Z

    return v0
.end method

.method static synthetic access$202(Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->mAnimationCanceled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->mContentContainer:Landroid/view/View;

    return-object v0
.end method

.method private loadAnimator()Landroid/animation/AnimatorSet;
    .locals 15

    .prologue
    .line 203
    iget-object v8, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->this$0:Lcom/miui/gallery/ui/SecretTipDialogFragment;

    invoke-virtual {v8}, Lcom/miui/gallery/ui/SecretTipDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0007

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v4

    .line 204
    .local v4, "scale":F
    iget-object v8, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->mPressIndicator:Landroid/view/View;

    const/4 v9, 0x3

    new-array v9, v9, [Landroid/animation/PropertyValuesHolder;

    const/4 v10, 0x0

    const-string v11, "scaleX"

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    aput v4, v12, v13

    const/4 v13, 0x1

    const/high16 v14, 0x3f800000    # 1.0f

    aput v14, v12, v13

    .line 205
    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "scaleY"

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    aput v4, v12, v13

    const/4 v13, 0x1

    const/high16 v14, 0x3f800000    # 1.0f

    aput v14, v12, v13

    .line 206
    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "alpha"

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_0

    .line 207
    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    aput-object v11, v9, v10

    .line 204
    invoke-static {v8, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 208
    .local v2, "indicatorPressAnimator":Landroid/animation/ObjectAnimator;
    new-instance v8, Lmiui/view/animation/CubicEaseInOutInterpolator;

    invoke-direct {v8}, Lmiui/view/animation/CubicEaseInOutInterpolator;-><init>()V

    invoke-virtual {v2, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 209
    iget-object v8, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->this$0:Lcom/miui/gallery/ui/SecretTipDialogFragment;

    invoke-virtual {v8}, Lcom/miui/gallery/ui/SecretTipDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090059

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 210
    iget-object v8, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->this$0:Lcom/miui/gallery/ui/SecretTipDialogFragment;

    invoke-virtual {v8}, Lcom/miui/gallery/ui/SecretTipDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090055

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 212
    iget-object v8, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->this$0:Lcom/miui/gallery/ui/SecretTipDialogFragment;

    invoke-virtual {v8}, Lcom/miui/gallery/ui/SecretTipDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b02ec

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 213
    .local v1, "endPadding":I
    iget-object v8, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->this$0:Lcom/miui/gallery/ui/SecretTipDialogFragment;

    invoke-virtual {v8}, Lcom/miui/gallery/ui/SecretTipDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b02ee

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 214
    .local v7, "startPadding":I
    const/4 v8, 0x2

    new-array v8, v8, [I

    const/4 v9, 0x0

    aput v7, v8, v9

    const/4 v9, 0x1

    aput v1, v8, v9

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 215
    .local v5, "slideDownAnimator":Landroid/animation/ValueAnimator;
    iget-object v8, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->mContentPaddingUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v5, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 216
    new-instance v8, Lmiui/view/animation/QuadraticEaseInOutInterpolator;

    invoke-direct {v8}, Lmiui/view/animation/QuadraticEaseInOutInterpolator;-><init>()V

    invoke-virtual {v5, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 217
    iget-object v8, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->this$0:Lcom/miui/gallery/ui/SecretTipDialogFragment;

    invoke-virtual {v8}, Lcom/miui/gallery/ui/SecretTipDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090056

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v5, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 218
    iget-object v8, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->this$0:Lcom/miui/gallery/ui/SecretTipDialogFragment;

    invoke-virtual {v8}, Lcom/miui/gallery/ui/SecretTipDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09005b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v5, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 220
    const/4 v8, 0x2

    new-array v8, v8, [I

    const/4 v9, 0x0

    aput v1, v8, v9

    const/4 v9, 0x1

    aput v7, v8, v9

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 221
    .local v6, "slideUpAnimator":Landroid/animation/ValueAnimator;
    iget-object v8, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->mContentPaddingUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v6, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 222
    new-instance v8, Lmiui/view/animation/QuadraticEaseInOutInterpolator;

    invoke-direct {v8}, Lmiui/view/animation/QuadraticEaseInOutInterpolator;-><init>()V

    invoke-virtual {v6, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 223
    iget-object v8, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->this$0:Lcom/miui/gallery/ui/SecretTipDialogFragment;

    invoke-virtual {v8}, Lcom/miui/gallery/ui/SecretTipDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090057

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v6, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 224
    iget-object v8, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->this$0:Lcom/miui/gallery/ui/SecretTipDialogFragment;

    invoke-virtual {v8}, Lcom/miui/gallery/ui/SecretTipDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09005c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v6, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 226
    iget-object v8, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->mPressIndicator:Landroid/view/View;

    const/4 v9, 0x3

    new-array v9, v9, [Landroid/animation/PropertyValuesHolder;

    const/4 v10, 0x0

    const-string v11, "scaleX"

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    aput v14, v12, v13

    const/4 v13, 0x1

    aput v4, v12, v13

    .line 227
    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "scaleY"

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    aput v14, v12, v13

    const/4 v13, 0x1

    aput v4, v12, v13

    .line 228
    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "alpha"

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_1

    .line 229
    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    aput-object v11, v9, v10

    .line 226
    invoke-static {v8, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 230
    .local v3, "indicatorReleaseAnimator":Landroid/animation/ObjectAnimator;
    new-instance v8, Lmiui/view/animation/CubicEaseInOutInterpolator;

    invoke-direct {v8}, Lmiui/view/animation/CubicEaseInOutInterpolator;-><init>()V

    invoke-virtual {v3, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 231
    iget-object v8, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->this$0:Lcom/miui/gallery/ui/SecretTipDialogFragment;

    invoke-virtual {v8}, Lcom/miui/gallery/ui/SecretTipDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09005a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 233
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 234
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v8, 0x4

    new-array v8, v8, [Landroid/animation/Animator;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    const/4 v9, 0x1

    aput-object v5, v8, v9

    const/4 v9, 0x2

    aput-object v6, v8, v9

    const/4 v9, 0x3

    aput-object v3, v8, v9

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 235
    return-object v0

    .line 206
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 228
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 136
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->mPositiveListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->mPositiveListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x7f12017b
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 112
    const v2, 0x7f040139

    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->setContentView(I)V

    .line 114
    iget-object v2, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->this$0:Lcom/miui/gallery/ui/SecretTipDialogFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/SecretTipDialogFragment;->access$000(Lcom/miui/gallery/ui/SecretTipDialogFragment;)Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;

    move-result-object v2

    const v3, 0x7f1201e9

    invoke-virtual {v2, v3}, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->mContentContainer:Landroid/view/View;

    .line 115
    iget-object v2, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->this$0:Lcom/miui/gallery/ui/SecretTipDialogFragment;

    invoke-static {v2}, Lcom/miui/gallery/ui/SecretTipDialogFragment;->access$000(Lcom/miui/gallery/ui/SecretTipDialogFragment;)Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;

    move-result-object v2

    const v3, 0x7f120284

    invoke-virtual {v2, v3}, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->mPressIndicator:Landroid/view/View;

    .line 116
    const v2, 0x7f12017b

    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->mPositiveBtn:Landroid/widget/Button;

    .line 117
    iget-object v2, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->mPositiveBtn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    invoke-virtual {p0}, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 120
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 121
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x50

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 122
    const/4 v2, -0x1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 123
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 124
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 125
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->pause()V

    .line 155
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->resume()V

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->startAnimation()V

    goto :goto_0
.end method

.method public setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->mPositiveListener:Landroid/view/View$OnClickListener;

    .line 129
    return-object p0
.end method

.method public startAnimation()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->this$0:Lcom/miui/gallery/ui/SecretTipDialogFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SecretTipDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->stopAnimation()V

    .line 170
    iget-boolean v0, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->mAnimationCanceled:Z

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_2

    .line 175
    invoke-direct {p0}, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->loadAnimator()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog$1;-><init>(Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 199
    iget-object v0, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/SecretTipDialogFragment$SecretTipDialog;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 162
    :cond_0
    return-void
.end method
