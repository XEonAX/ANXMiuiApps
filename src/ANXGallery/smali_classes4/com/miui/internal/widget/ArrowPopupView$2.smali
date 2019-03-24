.class Lcom/miui/internal/widget/ArrowPopupView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ArrowPopupView;
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

    .line 166
    iput-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView$2;->tz:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 174
    iget-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView$2;->tz:Lcom/miui/internal/widget/ArrowPopupView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/internal/widget/ArrowPopupView;->a(Lcom/miui/internal/widget/ArrowPopupView;Z)Z

    .line 175
    iget-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView$2;->tz:Lcom/miui/internal/widget/ArrowPopupView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/internal/widget/ArrowPopupView;->a(Lcom/miui/internal/widget/ArrowPopupView;Landroid/view/animation/AnimationSet;)Landroid/view/animation/AnimationSet;

    .line 176
    iget-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView$2;->tz:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-static {p1}, Lcom/miui/internal/widget/ArrowPopupView;->c(Lcom/miui/internal/widget/ArrowPopupView;)Lmiui/widget/ArrowPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Lmiui/widget/ArrowPopupWindow;->dismiss()V

    .line 177
    iget-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView$2;->tz:Lcom/miui/internal/widget/ArrowPopupView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ArrowPopupView;->setArrowMode(I)V

    .line 178
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .line 182
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 170
    return-void
.end method
