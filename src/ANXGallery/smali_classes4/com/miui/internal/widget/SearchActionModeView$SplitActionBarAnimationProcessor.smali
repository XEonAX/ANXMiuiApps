.class Lcom/miui/internal/widget/SearchActionModeView$SplitActionBarAnimationProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/view/ActionModeAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/SearchActionModeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SplitActionBarAnimationProcessor"
.end annotation


# instance fields
.field final synthetic wg:Lcom/miui/internal/widget/SearchActionModeView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/SearchActionModeView;)V
    .locals 0

    .line 615
    iput-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$SplitActionBarAnimationProcessor;->wg:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Z)V
    .locals 0

    .line 619
    return-void
.end method

.method public onStop(Z)V
    .locals 0

    .line 634
    return-void
.end method

.method public onUpdate(ZF)V
    .locals 1

    .line 623
    if-nez p1, :cond_0

    .line 624
    const/high16 p1, 0x3f800000    # 1.0f

    sub-float p2, p1, p2

    .line 626
    :cond_0
    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$SplitActionBarAnimationProcessor;->wg:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {p1}, Lcom/miui/internal/widget/SearchActionModeView;->getSplitActionBarContainer()Lcom/miui/internal/widget/ActionBarContainer;

    move-result-object p1

    .line 627
    if-eqz p1, :cond_1

    .line 628
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 630
    :cond_1
    return-void
.end method
