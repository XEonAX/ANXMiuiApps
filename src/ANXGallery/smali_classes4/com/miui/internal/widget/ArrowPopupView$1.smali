.class Lcom/miui/internal/widget/ArrowPopupView$1;
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

    .line 147
    iput-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView$1;->tz:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 155
    iget-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView$1;->tz:Lcom/miui/internal/widget/ArrowPopupView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/internal/widget/ArrowPopupView;->a(Lcom/miui/internal/widget/ArrowPopupView;Landroid/view/animation/AnimationSet;)Landroid/view/animation/AnimationSet;

    .line 156
    iget-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView$1;->tz:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-static {p1}, Lcom/miui/internal/widget/ArrowPopupView;->a(Lcom/miui/internal/widget/ArrowPopupView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 157
    iget-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView$1;->tz:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-static {p1}, Lcom/miui/internal/widget/ArrowPopupView;->b(Lcom/miui/internal/widget/ArrowPopupView;)V

    .line 159
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .line 163
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 151
    return-void
.end method
