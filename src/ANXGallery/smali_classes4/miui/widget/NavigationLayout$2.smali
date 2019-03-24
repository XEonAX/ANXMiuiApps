.class Lmiui/widget/NavigationLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/NavigationLayout;->eX()Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Vm:Lmiui/widget/NavigationLayout;


# direct methods
.method constructor <init>(Lmiui/widget/NavigationLayout;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lmiui/widget/NavigationLayout$2;->Vm:Lmiui/widget/NavigationLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 428
    iget-object v0, p0, Lmiui/widget/NavigationLayout$2;->Vm:Lmiui/widget/NavigationLayout;

    invoke-static {v0}, Lmiui/widget/NavigationLayout;->e(Lmiui/widget/NavigationLayout;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lmiui/widget/NavigationLayout$2;->Vm:Lmiui/widget/NavigationLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lmiui/widget/NavigationLayout;->a(Lmiui/widget/NavigationLayout;F)F

    .line 430
    iget-object p1, p0, Lmiui/widget/NavigationLayout$2;->Vm:Lmiui/widget/NavigationLayout;

    iget-object v0, p0, Lmiui/widget/NavigationLayout$2;->Vm:Lmiui/widget/NavigationLayout;

    invoke-static {v0}, Lmiui/widget/NavigationLayout;->e(Lmiui/widget/NavigationLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/NavigationLayout$2;->Vm:Lmiui/widget/NavigationLayout;

    invoke-static {v1}, Lmiui/widget/NavigationLayout;->e(Lmiui/widget/NavigationLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lmiui/widget/NavigationLayout$2;->Vm:Lmiui/widget/NavigationLayout;

    .line 431
    invoke-static {v2}, Lmiui/widget/NavigationLayout;->e(Lmiui/widget/NavigationLayout;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget-object v3, p0, Lmiui/widget/NavigationLayout$2;->Vm:Lmiui/widget/NavigationLayout;

    invoke-static {v3}, Lmiui/widget/NavigationLayout;->e(Lmiui/widget/NavigationLayout;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 430
    invoke-virtual {p1, v0, v1, v2, v3}, Lmiui/widget/NavigationLayout;->postInvalidateOnAnimation(IIII)V

    .line 433
    :cond_0
    return-void
.end method
