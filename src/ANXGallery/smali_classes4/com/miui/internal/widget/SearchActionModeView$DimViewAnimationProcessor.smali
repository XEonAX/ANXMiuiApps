.class Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;
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
    name = "DimViewAnimationProcessor"
.end annotation


# instance fields
.field final synthetic wg:Lcom/miui/internal/widget/SearchActionModeView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/SearchActionModeView;)V
    .locals 0

    .line 697
    iput-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->wg:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Z)V
    .locals 1

    .line 701
    if-eqz p1, :cond_0

    .line 702
    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->wg:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p1}, Lcom/miui/internal/widget/SearchActionModeView;->m(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->wg:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 703
    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->wg:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p1}, Lcom/miui/internal/widget/SearchActionModeView;->m(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 704
    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->wg:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p1}, Lcom/miui/internal/widget/SearchActionModeView;->m(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 706
    :cond_0
    return-void
.end method

.method public onStop(Z)V
    .locals 1

    .line 719
    const/16 v0, 0x8

    if-eqz p1, :cond_0

    .line 720
    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->wg:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p1}, Lcom/miui/internal/widget/SearchActionModeView;->b(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 721
    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->wg:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p1}, Lcom/miui/internal/widget/SearchActionModeView;->m(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 724
    :cond_0
    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->wg:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p1}, Lcom/miui/internal/widget/SearchActionModeView;->m(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 725
    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->wg:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p1}, Lcom/miui/internal/widget/SearchActionModeView;->m(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 726
    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->wg:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p1}, Lcom/miui/internal/widget/SearchActionModeView;->m(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 728
    :cond_1
    :goto_0
    return-void
.end method

.method public onUpdate(ZF)V
    .locals 0

    .line 710
    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    sub-float p2, p1, p2

    .line 711
    :goto_0
    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->wg:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p1}, Lcom/miui/internal/widget/SearchActionModeView;->m(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 712
    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->wg:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p1}, Lcom/miui/internal/widget/SearchActionModeView;->n(Lcom/miui/internal/widget/SearchActionModeView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 713
    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->wg:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p1}, Lcom/miui/internal/widget/SearchActionModeView;->m(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->wg:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p2}, Lcom/miui/internal/widget/SearchActionModeView;->l(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 715
    :cond_1
    return-void
.end method
