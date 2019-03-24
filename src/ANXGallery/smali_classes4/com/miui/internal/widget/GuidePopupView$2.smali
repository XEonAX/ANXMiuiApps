.class Lcom/miui/internal/widget/GuidePopupView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/GuidePopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancel:Z

.field final synthetic uP:Lcom/miui/internal/widget/GuidePopupView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/GuidePopupView;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/miui/internal/widget/GuidePopupView$2;->uP:Lcom/miui/internal/widget/GuidePopupView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 144
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/internal/widget/GuidePopupView$2;->mCancel:Z

    .line 145
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 149
    iget-boolean p1, p0, Lcom/miui/internal/widget/GuidePopupView$2;->mCancel:Z

    if-eqz p1, :cond_0

    .line 150
    return-void

    .line 152
    :cond_0
    iget-object p1, p0, Lcom/miui/internal/widget/GuidePopupView$2;->uP:Lcom/miui/internal/widget/GuidePopupView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/internal/widget/GuidePopupView;->a(Lcom/miui/internal/widget/GuidePopupView;Z)Z

    .line 153
    iget-object p1, p0, Lcom/miui/internal/widget/GuidePopupView$2;->uP:Lcom/miui/internal/widget/GuidePopupView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/internal/widget/GuidePopupView;->a(Lcom/miui/internal/widget/GuidePopupView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 154
    iget-object p1, p0, Lcom/miui/internal/widget/GuidePopupView$2;->uP:Lcom/miui/internal/widget/GuidePopupView;

    invoke-static {p1}, Lcom/miui/internal/widget/GuidePopupView;->a(Lcom/miui/internal/widget/GuidePopupView;)Lmiui/widget/GuidePopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Lmiui/widget/GuidePopupWindow;->dismiss()V

    .line 155
    iget-object p1, p0, Lcom/miui/internal/widget/GuidePopupView$2;->uP:Lcom/miui/internal/widget/GuidePopupView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/GuidePopupView;->setArrowMode(I)V

    .line 156
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 138
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/internal/widget/GuidePopupView$2;->mCancel:Z

    .line 139
    iget-object p1, p0, Lcom/miui/internal/widget/GuidePopupView$2;->uP:Lcom/miui/internal/widget/GuidePopupView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/internal/widget/GuidePopupView;->a(Lcom/miui/internal/widget/GuidePopupView;Z)Z

    .line 140
    return-void
.end method
