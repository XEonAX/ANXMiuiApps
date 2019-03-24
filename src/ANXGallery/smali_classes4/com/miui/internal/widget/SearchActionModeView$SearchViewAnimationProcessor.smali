.class Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;
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
    name = "SearchViewAnimationProcessor"
.end annotation


# instance fields
.field final synthetic wg:Lcom/miui/internal/widget/SearchActionModeView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/SearchActionModeView;)V
    .locals 0

    .line 564
    iput-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->wg:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Z)V
    .locals 1

    .line 568
    if-eqz p1, :cond_0

    .line 569
    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->wg:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p1}, Lcom/miui/internal/widget/SearchActionModeView;->b(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    .line 570
    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->wg:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p1}, Lcom/miui/internal/widget/SearchActionModeView;->b(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->wg:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 572
    :cond_0
    return-void
.end method

.method public onStop(Z)V
    .locals 1

    .line 588
    if-nez p1, :cond_0

    .line 589
    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->wg:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p1}, Lcom/miui/internal/widget/SearchActionModeView;->b(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->wg:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 591
    :cond_0
    return-void
.end method

.method public onUpdate(ZF)V
    .locals 3

    .line 576
    if-nez p1, :cond_0

    .line 577
    const/high16 p1, 0x3f800000    # 1.0f

    sub-float p2, p1, p2

    .line 579
    :cond_0
    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->wg:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {p1}, Lcom/miui/internal/widget/SearchActionModeView;->c(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result p1

    if-lez p1, :cond_1

    .line 580
    iget-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->wg:Lcom/miui/internal/widget/SearchActionModeView;

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->wg:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/SearchActionModeView;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->wg:Lcom/miui/internal/widget/SearchActionModeView;

    .line 581
    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->d(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->wg:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->c(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr p2, v2

    add-float/2addr v1, p2

    float-to-int p2, v1

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->wg:Lcom/miui/internal/widget/SearchActionModeView;

    .line 582
    invoke-virtual {v1}, Lcom/miui/internal/widget/SearchActionModeView;->getPaddingRight()I

    move-result v1

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->wg:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v2}, Lcom/miui/internal/widget/SearchActionModeView;->getPaddingBottom()I

    move-result v2

    .line 580
    invoke-virtual {p1, v0, p2, v1, v2}, Lcom/miui/internal/widget/SearchActionModeView;->setPadding(IIII)V

    .line 584
    :cond_1
    return-void
.end method
