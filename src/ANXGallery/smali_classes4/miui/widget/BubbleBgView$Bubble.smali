.class Lmiui/widget/BubbleBgView$Bubble;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/BubbleBgView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Bubble"
.end annotation


# static fields
.field private static final DURATION:I = 0xbb8

.field private static final Pm:I = 0x7d0

.field private static final Pt:Ljava/util/Random;


# instance fields
.field private final Pn:I

.field private final Po:I

.field private final Pp:I

.field private final Pq:I

.field private final Pr:I

.field private final Ps:I

.field private final color:I

.field private final radius:I

.field private tk:Landroid/animation/AnimatorSet;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 124
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lmiui/widget/BubbleBgView$Bubble;->Pt:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(IIIIIIII)V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput p1, p0, Lmiui/widget/BubbleBgView$Bubble;->Pn:I

    .line 128
    iput p2, p0, Lmiui/widget/BubbleBgView$Bubble;->Po:I

    .line 129
    iput p3, p0, Lmiui/widget/BubbleBgView$Bubble;->radius:I

    .line 130
    add-int/2addr p4, p1

    iput p4, p0, Lmiui/widget/BubbleBgView$Bubble;->Pq:I

    .line 131
    add-int/2addr p5, p1

    iput p5, p0, Lmiui/widget/BubbleBgView$Bubble;->Pp:I

    .line 132
    add-int/2addr p6, p2

    iput p6, p0, Lmiui/widget/BubbleBgView$Bubble;->Ps:I

    .line 133
    add-int/2addr p7, p2

    iput p7, p0, Lmiui/widget/BubbleBgView$Bubble;->Pr:I

    .line 134
    iput p8, p0, Lmiui/widget/BubbleBgView$Bubble;->color:I

    .line 135
    invoke-direct {p0}, Lmiui/widget/BubbleBgView$Bubble;->ek()V

    .line 136
    return-void
.end method

.method static synthetic a(Lmiui/widget/BubbleBgView$Bubble;)I
    .locals 0

    .line 112
    iget p0, p0, Lmiui/widget/BubbleBgView$Bubble;->color:I

    return p0
.end method

.method static synthetic b(Lmiui/widget/BubbleBgView$Bubble;)F
    .locals 0

    .line 112
    invoke-direct {p0}, Lmiui/widget/BubbleBgView$Bubble;->el()F

    move-result p0

    return p0
.end method

.method static synthetic c(Lmiui/widget/BubbleBgView$Bubble;)F
    .locals 0

    .line 112
    invoke-direct {p0}, Lmiui/widget/BubbleBgView$Bubble;->em()F

    move-result p0

    return p0
.end method

.method static synthetic d(Lmiui/widget/BubbleBgView$Bubble;)I
    .locals 0

    .line 112
    iget p0, p0, Lmiui/widget/BubbleBgView$Bubble;->radius:I

    return p0
.end method

.method static synthetic e(Lmiui/widget/BubbleBgView$Bubble;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Lmiui/widget/BubbleBgView$Bubble;->ek()V

    return-void
.end method

.method private ek()V
    .locals 9

    .line 139
    sget-object v0, Lmiui/widget/BubbleBgView$Bubble;->Pt:Ljava/util/Random;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x7d0

    .line 140
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lmiui/widget/BubbleBgView$Bubble;->tk:Landroid/animation/AnimatorSet;

    .line 141
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    .line 142
    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 143
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 144
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 145
    iget-object v2, p0, Lmiui/widget/BubbleBgView$Bubble;->tk:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v4, v3, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 146
    iget-object v0, p0, Lmiui/widget/BubbleBgView$Bubble;->tk:Landroid/animation/AnimatorSet;

    new-instance v2, Lmiui/widget/BubbleBgView$Bubble$1;

    invoke-direct {v2, p0}, Lmiui/widget/BubbleBgView$Bubble$1;-><init>(Lmiui/widget/BubbleBgView$Bubble;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 165
    iget-object v0, p0, Lmiui/widget/BubbleBgView$Bubble;->tk:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 166
    sget-object v0, Lmiui/widget/BubbleBgView$Bubble;->Pt:Ljava/util/Random;

    iget v2, p0, Lmiui/widget/BubbleBgView$Bubble;->Pp:I

    iget v4, p0, Lmiui/widget/BubbleBgView$Bubble;->Pq:I

    sub-int/2addr v2, v4

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iget v2, p0, Lmiui/widget/BubbleBgView$Bubble;->Pq:I

    add-int/2addr v0, v2

    .line 167
    sget-object v2, Lmiui/widget/BubbleBgView$Bubble;->Pt:Ljava/util/Random;

    iget v4, p0, Lmiui/widget/BubbleBgView$Bubble;->Pr:I

    iget v6, p0, Lmiui/widget/BubbleBgView$Bubble;->Ps:I

    sub-int/2addr v4, v6

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    iget v4, p0, Lmiui/widget/BubbleBgView$Bubble;->Ps:I

    add-int/2addr v2, v4

    .line 168
    iget-object v4, p0, Lmiui/widget/BubbleBgView$Bubble;->tk:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/ValueAnimator;

    const/4 v6, 0x3

    new-array v7, v6, [F

    iget v8, p0, Lmiui/widget/BubbleBgView$Bubble;->Pn:I

    int-to-float v8, v8

    aput v8, v7, v5

    int-to-float v0, v0

    aput v0, v7, v1

    iget v0, p0, Lmiui/widget/BubbleBgView$Bubble;->Pn:I

    int-to-float v0, v0

    aput v0, v7, v3

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 169
    iget-object v0, p0, Lmiui/widget/BubbleBgView$Bubble;->tk:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    new-array v4, v6, [F

    iget v6, p0, Lmiui/widget/BubbleBgView$Bubble;->Po:I

    int-to-float v6, v6

    aput v6, v4, v5

    int-to-float v2, v2

    aput v2, v4, v1

    iget v1, p0, Lmiui/widget/BubbleBgView$Bubble;->Po:I

    int-to-float v1, v1

    aput v1, v4, v3

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 170
    iget-object v0, p0, Lmiui/widget/BubbleBgView$Bubble;->tk:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 171
    return-void
.end method

.method private el()F
    .locals 2

    .line 174
    iget-object v0, p0, Lmiui/widget/BubbleBgView$Bubble;->tk:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 175
    iget v0, p0, Lmiui/widget/BubbleBgView$Bubble;->Pn:I

    int-to-float v0, v0

    return v0

    .line 177
    :cond_0
    iget-object v0, p0, Lmiui/widget/BubbleBgView$Bubble;->tk:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method private em()F
    .locals 2

    .line 181
    iget-object v0, p0, Lmiui/widget/BubbleBgView$Bubble;->tk:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 182
    iget v0, p0, Lmiui/widget/BubbleBgView$Bubble;->Po:I

    int-to-float v0, v0

    return v0

    .line 184
    :cond_0
    iget-object v0, p0, Lmiui/widget/BubbleBgView$Bubble;->tk:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method
