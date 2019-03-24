.class Lcom/miui/internal/widget/ArrowPopupView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/widget/ArrowPopupView;->bF()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic tz:Lcom/miui/internal/widget/ArrowPopupView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/ArrowPopupView;)V
    .locals 0

    .line 793
    iput-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView$5;->tz:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 796
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView$5;->tz:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/miui/internal/widget/ArrowPopupView;->a(Lcom/miui/internal/widget/ArrowPopupView;I)I

    .line 797
    iget-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView$5;->tz:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-static {p1}, Lcom/miui/internal/widget/ArrowPopupView;->g(Lcom/miui/internal/widget/ArrowPopupView;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 798
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView$5;->tz:Lcom/miui/internal/widget/ArrowPopupView;

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView$5;->tz:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-static {v1}, Lcom/miui/internal/widget/ArrowPopupView;->h(Lcom/miui/internal/widget/ArrowPopupView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v1

    sub-int/2addr v1, p1

    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView$5;->tz:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-static {v2}, Lcom/miui/internal/widget/ArrowPopupView;->h(Lcom/miui/internal/widget/ArrowPopupView;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTop()I

    move-result v2

    sub-int/2addr v2, p1

    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView$5;->tz:Lcom/miui/internal/widget/ArrowPopupView;

    .line 799
    invoke-static {v3}, Lcom/miui/internal/widget/ArrowPopupView;->h(Lcom/miui/internal/widget/ArrowPopupView;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getRight()I

    move-result v3

    add-int/2addr v3, p1

    iget-object v4, p0, Lcom/miui/internal/widget/ArrowPopupView$5;->tz:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-static {v4}, Lcom/miui/internal/widget/ArrowPopupView;->h(Lcom/miui/internal/widget/ArrowPopupView;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v4

    add-int/2addr v4, p1

    .line 798
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/internal/widget/ArrowPopupView;->invalidate(IIII)V

    .line 800
    return-void
.end method
